source 'https://rubygems.org'
ruby '2.2.5'

gem "decisiontree"
gem "pry"
gem "pry-coolline"
gem "rake"
gem 'ngramdistance-ffi', :require => 'ngramdistance'
gem 'levenshtein-ffi', :require => 'levenshtein'

require "csv"

Dir[File.dirname(__FILE__) + '/lib/deduper/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/lib/training_data/*.rb'].each {|file| require file }
