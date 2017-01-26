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
