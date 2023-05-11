require "make_snippet"

RSpec.describe "make_snippet method" do
  context "given an empty string" do
    it "returns an empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end

  context "given a string of 5 words" do
    it "returns the string" do
      result = make_snippet("one two three four five")
      expect(result).to eq "one two three four five"
    end
  end

  context "given a string of more than 5 words" do
    it "returns the first five words with a ..." do
      result = make_snippet("one two three four five six")
      expect(result).to eq "one two three four five..."
    end
  end
end
