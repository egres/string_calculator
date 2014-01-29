require 'spec_helper'

describe StringCalculator do
  describe '#add' do
    it "returns 0 when given an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end
    
    it "handles a single number input" do
      expect(StringCalculator.add("1")).to eq(1)
    end
    
    it "handles 2 number input" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end
    
    it "handles unlimited number input" do
      expect(StringCalculator.add("1,2,3")).to eq(6)
    end
    
    it "handles new line characters '\n' as delimiters" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
    
    it "handles custom delimiters" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
    
    it "handles custom delimiter strings" do
      expect(StringCalculator.add("//delimiter\n1delimiter2")).to eq(3)
    end
    
    it "raises exception if negative numbers are present" do
      expect{ StringCalculator.add("1,-2,3,-4") }.to raise_error(RuntimeError, /\[-2, -4\]/)
    end
  end
end