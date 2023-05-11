require "reading_time_design"

RSpec.describe "reading_time_design" do
  context "given an empty string" do
      it "returns zero" do
        result = reading_time_design("")
        expect(result).to eq 0
      end
  end

  context "given under two hundred words" do
    it "returns one" do
      result = reading_time_design("one two")
      expect(result).to eq 1
    end
  end  

  context "given two hundred word" do
    it "returns one" do
      result = reading_time_design("one " * 200)
      expect(result).to eq 1
    end
  end  

  context "given three hundred word" do
    it "returns two" do
      result = reading_time_design("one " * 300)
      expect(result).to eq 2
    end
  end  
end  
