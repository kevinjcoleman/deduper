require 'bundler/setup'
Bundler.require

class Modulerizer
  attr_accessor :row1, :row2, :output
  FIELDS = %w(first_name middle_name last_name born_at)

  def initialize(row1, row2)
    @row1, @row2 = row1, row2
  end

  def compare
    @output = []
    FIELDS.each do |field|
      @output << compare_field(field)
      @output << ngram_distance(field)
      @output << edit_distance(field)
    end
    test_full_name
    @output
  end

  def compare_field(field)
    if !row1[field].nil? && !row2[field].nil?
      1.0
    elsif !row1[field].nil? || !row2[field].nil?
      0.5
    else
      row1[field] == row2[field] ? 1.0 : 0
    end
  end

  def ngram_distance(field)
    return 0 if row1[field].nil? || row2[field].nil?
    NGramDistance.distance(row1[field], row2[field])
  end

  def edit_distance(field)
    return 0 if row1[field].nil? || row2[field].nil?
    Levenshtein.distance(row1[field], row2[field])
  end

  def test_full_name
    full_name1, full_name2 = "#{row1["first_name"]} #{row1["middle_name"]} #{row1["last_name"]}", "#{row2["first_name"]} #{row2["middle_name"]} #{row2["last_name"]}"
    full_name_match = full_name1 == full_name2 ? 1.0 : 0
    output << full_name_match
    output << NGramDistance.distance(full_name1, full_name2)
    output << Levenshtein.distance(full_name1, full_name2)
  end
end
