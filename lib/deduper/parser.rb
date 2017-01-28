require 'bundler/setup'
Bundler.require

class Parser
  attr_accessor :file, :output_file, :match_count, :count, :og_line_count, :rows
  @@run_count = 0

  def initialize(path_to_file)
    @file = path_to_file
    @@run_count += 1
    @match_count = 0
    @output_file = CSV.open("tmp/job_#{Time.now.to_i}.csv", "wb")
    @rows = CSV.foreach(file, headers: true).map {|row| row.to_hash }
    @count = @rows.size
  end

  def parse!
    yield_csv_rows do |row, i|
      @og_line_count = i
      puts count if count % 50 == 0
      puts Benchmark.measure { yield_csv_rows(row) { |og_row, searched_row|  check_for_matches(og_row, searched_row) } }
      @count -= 1
    end
    output_file.close
  end

  def yield_csv_rows(og_row=nil)
    rows.each_with_index do |row, i|
      next if og_line_count && og_line_count >= i
      og_row ? yield(og_row, row) : yield(row, i)
    end
  end

  def check_for_matches(og_row, searched_row)
    modulized = Modulerizer.new(og_row, searched_row).compare
    result = classifier.predict(modulized)
    if result == 1
      output_file << og_row.to_hash.values.unshift(match_count)
      output_file << searched_row.to_hash.values.unshift(match_count)
      output_file.flush
      puts "Match"
      puts og_row
      puts searched_row
      puts "--------"
      @match_count += 1
    end
  end

  def classifier
    @classifier ||= Classifier.new
  end
end
