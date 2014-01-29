require 'spec_helper'

describe StringCalculator do
  describe '#add' do
    it "returns 0 when given an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end
    
    it "returns 1 when given '1'" do
      expect(StringCalculator.add("1")).to eq(1)
    end
    
    it "returns 3 when given '1,2'" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end    
  end
end