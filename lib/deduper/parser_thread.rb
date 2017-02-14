require 'bundler/setup'
Bundler.require

class ParserThread
  include Celluloid
  attr_accessor :search_rows, :classifier, :local_rows, :start_index, :timer, :output_file, :og_line_count, :end_index

  def initialize(args)
    @start_index, @end_index = args[:start_index], args[:end_index]
    @local_rows = args[:local_rows]
    @search_rows = local_rows[start_index..end_index]
    @classifier = args[:classifier]
    @timer = args[:timer]
    @output_file = args[:output_file]
  end

  def parse!
    yield_csv_rows do |row, i|
      @og_line_count = i
      yield_csv_rows(row) { |og_row, searched_row|  check_for_matches(og_row, searched_row) }
      timer.row
    end
  end

  def yield_csv_rows(og_row=nil)
    local_rows[start_index..-1].each_with_index do |row, i|
      next if og_line_count && og_line_count >= i
      og_row ? yield(og_row, row) : yield(row, i)
    end
  end

  def check_for_matches(og_row, searched_row)
    modulized = Modulerizer.new(og_row, searched_row).compare
    result = classifier.predict(modulized)
    if result == 1
      output_file << RowOutputer.new(og_row, searched_row).output
      output_file.flush
    end
  end
end
