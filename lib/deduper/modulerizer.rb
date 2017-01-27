require 'bundler/setup'
Bundler.require

class Modulerizer
  attr_accessor :row1, :row2, :output, :full_name1, :full_name2
  PERSONAL_FIELDS = %w(first_name
                     middle_name
                     last_name
                     born_at)
  REGISTERED_ADDRESS_FIELDS = %w(registered_address1
                                 registered_address2
                                 registered_address3
                                 registered_city
                                 registered_state
                                 registered_zip
                                 registered_country_code)

  FIELDS = (PERSONAL_FIELDS + REGISTERED_ADDRESS_FIELDS)

  def initialize(row1, row2)
    @row1, @row2 = row1, row2
    @full_name1, @full_name2 = "#{row1["first_name"]} #{row1["middle_name"]} #{row1["last_name"]}", "#{row2["first_name"]} #{row2["middle_name"]} #{row2["last_name"]}"
    @output = []
  end

  def compare
    #Compare fields for equality
    FIELDS.each do |field|
      output << compare_field(field)
    end
    output << (full_name1 == full_name2 ? 1.0 : 0)

    #Compare fields for edit distance
    #FIELDS.each do |field|
    #  output << edit_distance(field)
    #end
    #output << Levenshtein.distance(full_name1, full_name2)

    #Compare fields for trigram distance.
    #FIELDS.each do |field|
    #  output << ngram_distance(field)
    #end
    #output << NGramDistance.distance(full_name1, full_name2)

    #Return output
    output
  end

  def compare_field(field)
    if row1[field].nil? && row2[field].nil?
      0.75
    elsif row1[field].nil? || row2[field].nil?
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
    return 20 if row1[field].nil? || row2[field].nil?
    Levenshtein.distance(row1[field], row2[field])
  end
end
