require 'bundler/setup'
Bundler.require

class Parser
  attr_accessor :file, :output_file, :match_count, :count, :og_line_count, :rows, :timer
  THREADS = 20

  def initialize(path_to_file)
    @file = path_to_file
    @match_count = 0
    @output_file = CSV.open("tmp/job_#{Time.now.to_i}.csv", "wb")
    @rows = CSV.foreach(file, headers: true).map {|row| row.to_hash }
    @timer = ScriptTimer.new(rows.size, "rows", 500)
  end

  def parse!
    output_file << RowOutputer.headers
    yield_csv_rows do |row, i|
      @og_line_count = i
      yield_csv_rows(row) { |og_row, searched_row|  check_for_matches(og_row, searched_row) }
      timer.row
    end
    output_file.close
  end

  def yield_csv_rows(og_row=nil)
    rows.each_with_index do |row, i|
      next if og_line_count && og_line_count >= i
      og_row ? yield(og_row, row) : yield(row, i)
    end
  end

  def parse_with_threads
    output_file << RowOutputer.headers
    @threads = []
    @parser_threads = []
    @average = rows.size / THREADS
    THREADS.times do |t|
      start_index = t.eql?(0) ? 0 : (t * @average)
      end_index = t.eql?((THREADS - 1)) ? -1 : (start_index + @average - 1)
      parser_thread = ParserThread.new(classifier: classifier,
                                          local_rows: rows.clone,
                                          timer: timer,
                                          output_file: output_file,
                                          start_index: start_index,
                                          end_index: end_index)
      @threads << parser_thread.future.parse!
    end
    @threads.map(&:value)
    output_file.close
  end

  def check_for_matches(og_row, searched_row)
    modulized = Modulerizer.new(og_row, searched_row).compare
    result = classifier.predict(modulized)
    if result == 1
      output_file << RowOutputer.new(og_row, searched_row).output
      output_file.flush
      @match_count += 1
    end
  end

  def classifier
    @classifier ||= Classifier.new
  end
end
