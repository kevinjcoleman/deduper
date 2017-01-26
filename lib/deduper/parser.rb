require 'bundler/setup'
Bundler.require

class Parser
  attr_accessor :file, :classifier, :output_file, :match_count
  @@run_count = 0

  def initialize(path_to_file)
    @file = path_to_file
    @classifier = Classifier.new
    @@run_count += 1
    @match_count = 0
    @output_file = CSV.open("tmp/job_#{Time.now.to_i}.csv", "wb")
  end

  def parse!
    yield_csv_file do |row|
      yield_csv_file(row) { |og_row, searched_row| check_for_matches(og_row, searched_row) }
    end
    output_file.close
  end

  def yield_csv_file(og_row=nil)
    CSV.foreach(file, headers: true) do |row|
      next if og_row && og_row == row
      og_row ? yield(og_row, row) : yield(row)
    end
  end

  def check_for_matches(og_row, searched_row)
    modulized = Modulerizer.new(og_row, searched_row).compare
    result = classifier.predict(modulized)
    if result
      output_file << og_row.to_hash.values.unshift(match_count)
      output_file << searched_row.to_hash.values.unshift(match_count)
      @match_count += 1
    end
  end
end
