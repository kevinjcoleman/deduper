require 'bundler/setup'
Bundler.require

class Modulerizer
  attr_accessor :row1, :row2, :output, :full_name1, :full_name2, :full_address1, :full_address2

  def initialize(row1, row2)
    @row1, @row2 = row1, row2
    @full_name1, @full_name2 = "#{row1["first_name"]} #{row1["middle_name"]} #{row1["last_name"]}", "#{row2["first_name"]} #{row2["middle_name"]} #{row2["last_name"]}"
    @full_address1 = "#{row1["registered_address1"]} #{row1["registered_address2"]} #{row1["registered_address3"]} #{row1["registered_city"]} #{row1["registered_state"]} #{row1["registered_zip"]} #{row1["registered_country_code"]}"
    @full_address2 = "#{row2["registered_address1"]} #{row2["registered_address2"]} #{row2["registered_address3"]} #{row2["registered_city"]} #{row2["registered_state"]} #{row2["registered_zip"]} #{row2["registered_country_code"]}"
    @output = []
  end

  def compare
    #Compare fields for equality
    output << Hotwater.levenshtein_distance(full_name1, full_name2)
    output << Hotwater.levenshtein_distance(full_address1, full_address2)
    output << compare_field("born_at")
    output << compare_field("suffix")


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
    field1, field2 = row1[field], row2[field]
    if !field1 || !field2
      !field1 && !field2 ? 0.75 : 0.5
    else
      field1.eql?(field2) ? 1.0 : 0
    end
  end
end
