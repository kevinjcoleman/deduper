require 'bundler/setup'
Bundler.require

class TrainingDataBuilder
  FILE_PATH = "lib/training_data"
  OLD_FILE_NAME = "#{FILE_PATH}/training_data.csv"
  TEMP_FILE_NAME = "#{FILE_PATH}/temp_training_data.csv"

  def self.build!
    @count = 0
    build_training_set
    cleanup_tmp_files
    output_results
  end

  def self.build_training_set
    CSV.open(TEMP_FILE_NAME, "wb") do |row|
      row << Classifier::KEYS
      TrainingSamples::DEFAULTS.each do |default|
        row << Modulerizer.new(default[0], default[1]).compare.each(&:to_s).push(default[2])
        @count += 1
      end
    end
  end

  def self.cleanup_tmp_files
    FileUtils.rm(OLD_FILE_NAME) if File.exists?(OLD_FILE_NAME)
    File.rename(TEMP_FILE_NAME, OLD_FILE_NAME)
  end

  def self.output_results
    puts "A #{@count} line training file was created."
  end
end
