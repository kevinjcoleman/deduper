require 'bundler/setup'
Bundler.require

class RowOutputer
  attr_accessor :row1, :row2, :match_count

  def self.fields
    Array.new(Modulerizer::FIELDS).unshift("nationbuilder_id")
  end

  def self.headers
    fields.flat_map {|field| ["#{field}_1", "#{field}_2"] }.unshift("match_count")
  end

  def initialize(row1, row2, match_count)
    @row1, @row2, @match_count = row1, row2, match_count
  end

  def output
    self.class.fields.flat_map {|field| [row1[field], row2[field]] }.unshift(match_count)
  end
end
