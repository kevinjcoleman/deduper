require 'spec_helper'

describe Modulerizer do
  let!(:row1) {TrainingSamples::MATCHING_FIRST_LAST_BLANK_MIDDLE[0].clone}
  let!(:row2) {TrainingSamples::MATCHING_FIRST_LAST_BLANK_MIDDLE[1].clone}
  let!(:subject) {Modulerizer.new(row1, row2)}

  context "attributes" do
    it "row1 & row2 set correctly" do
      expect(subject.row1).to eq(row1)
      expect(subject.row2).to eq(row2)
    end

    it "full names set correctly" do
      expect(subject.full_name1).to eq("Kevin  Coleman")
      expect(subject.full_name2).to eq("Kevin J Coleman")
    end
  end

  context "#compare_field" do
    context "no blank fields" do
      it "return 1 if equal" do
        expect(subject.compare_field("first_name")).to eq(1)
      end

      it "return 0 if unequal" do
        subject.row1["first_name"] = "James"
        expect(subject.compare_field("first_name")).to eq(0)
      end
    end

    context "blank fields" do
      it "return 0.5 if one is blank" do
        expect(subject.compare_field("middle_name")).to eq(0.5)
      end

      it "return 0.75 if both are blank" do
        subject.row2["middle_name"] = nil
        expect(subject.compare_field("middle_name")).to eq(0.75)
      end
    end
  end
end
