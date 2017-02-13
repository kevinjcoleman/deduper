source 'https://rubygems.org'
ruby '2.3.0', :engine => 'jruby', :engine_version => '9.1.2.0'

gem "decisiontree"
gem "pry"
gem "pry-coolline"
gem "rake"
gem "rspec"

#gem 'ngramdistance-ffi', :require => 'ngramdistance'
#gem 'levenshtein-ffi', :require => 'levenshtein'

require "csv"
require "benchmark"

Dir[File.dirname(__FILE__) + '/lib/deduper/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/lib/training_data/*.rb'].each {|file| require file }
