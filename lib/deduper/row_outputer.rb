require 'bundler/setup'
Bundler.require

class RowOutputer
  attr_accessor :row1, :row2

  FIELDS = %w(nationbuilder_id
               first_name
               middle_name
               last_name
               born_at
               suffix
               registered_address1
               registered_address2
               registered_address3
               registered_city
               registered_state
               registered_zip
               registered_country_code)

  def self.fields
    Array.new(FIELDS)
  end

  def self.headers
    fields.flat_map {|field| ["#{field}_1", "#{field}_2"] }
  end

  def initialize(row1, row2)
    @row1, @row2 = row1, row2
  end

  def output
    self.class.fields.flat_map {|field| [row1[field], row2[field]] }
  end
end
