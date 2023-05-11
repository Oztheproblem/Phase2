#Design A method called count_words that takes a string as an argument and returns the number of words in that string.
require "count_words"
# frozen_string_literal: true

RSpec.describe "count_words method" do
  context "takes an empty string" do 
    it "takes a string and counts words in that string" do
     expect(count_words("")).to eq 0
    end
  end  

  context "a string with 5 words" do 
    it "counts words in that string return total" do
     expect(count_words("apple bottle")).to eq 2
    end
  end  
end



