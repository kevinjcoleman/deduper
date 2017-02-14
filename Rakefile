require 'bundler/setup'
Bundler.require

desc 'Build training data'
task :build do
  TrainingDataBuilder.build!
end

desc 'Parse data for matches'
task :parse, [:file] do |t, args|
  Parser.new(args[:file]).parse!
end

# Run job with extra memory ----- jruby -J-Xmx2G -J-XX:+HeapDumpOnOutOfMemoryError -S rake parse_with_threads["tmp/test_files/dc_export.csv"]
desc 'Parse data for matches with threads'
task :parse_with_threads, [:file] do |t, args|
  Parser.new(args[:file]).parse_with_threads
end
