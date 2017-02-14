require 'spec_helper'

describe RowOutputer do
  let(:row1) {{"id" => 1}.merge(TrainingSamples::MATCHING_FIRST_LAST_BLANK_MIDDLE[0])}
  let(:row2) {{"id" => 2}.merge(TrainingSamples::MATCHING_FIRST_LAST_BLANK_MIDDLE[1])}
  let(:subject) {RowOutputer.new(row1, row2)}

  context "attributes" do
    it "row1 & row2 set correctly" do
      expect(subject.row1).to eq(row1)
      expect(subject.row2).to eq(row2)
    end
  end

  context "headers" do
    it "is an array" do
      expect(RowOutputer.headers).to be_a(Array)
    end

    it "outputs header fields" do
      expect(RowOutputer.headers).to eq(%w(nationbuilder_id_1
                                             nationbuilder_id_2
                                             first_name_1
                                             first_name_2
                                             middle_name_1
                                             middle_name_2
                                             last_name_1
                                             last_name_2
                                             born_at_1
                                             born_at_2
                                             suffix_1
                                             suffix_2
                                             registered_address1_1
                                             registered_address1_2
                                             registered_address2_1
                                             registered_address2_2
                                             registered_address3_1
                                             registered_address3_2
                                             registered_city_1
                                             registered_city_2
                                             registered_state_1
                                             registered_state_2
                                             registered_zip_1
                                             registered_zip_2
                                             registered_country_code_1
                                             registered_country_code_2))
    end
  end

  context "output" do
    it "is an array" do
      expect(subject.output).to be_a(Array)
    end
    it "outputs the matching row" do
      expect(subject.output).to eq([nil,
                                    nil,
                                    "Kevin",
                                    "Kevin",
                                    nil,
                                    "J",
                                    "Coleman",
                                    "Coleman",
                                    "08/16/1991",
                                    "08/16/1991",
                                    nil,
                                    nil,
                                    "520 South Grand",
                                    "520 South Grand",
                                    "2nd Floor",
                                    "2nd Floor",
                                    nil,
                                    nil,
                                    "Los Angeles",
                                    "Los Angeles",
                                    "CA",
                                    "CA",
                                    "90071",
                                    "90071",
                                    "US",
                                    "US"])
    end
  end
end
