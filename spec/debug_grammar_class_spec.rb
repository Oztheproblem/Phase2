require 'debug_grammar_class'

RSpec.describe GrammarStats do
    describe "#check" do
      context "when given a valid sentence" do
        it "returns true" do
          grammar_stats = GrammarStats.new
          expect(grammar_stats.check("The quick brown fox jumps over the lazy dog.")).to eq(true)
        end
  
        it "increments the @passed_check instance variable" do
          grammar_stats = GrammarStats.new
          expect { grammar_stats.check("The quick brown fox jumps over the lazy dog.") }.to change { grammar_stats.instance_variable_get(:@passed_check) }.by(1)
        end
  
        it "increments the @num_good instance variable" do
          grammar_stats = GrammarStats.new
          expect { grammar_stats.check("The quick brown fox jumps over the lazy dog.") }.to change { grammar_stats.instance_variable_get(:@num_good) }.by(1)
        end
      end
  
      context "when given an invalid sentence" do
        it "returns false" do
          grammar_stats = GrammarStats.new
          expect(grammar_stats.check("the quick brown fox jumps over the lazy dog.")).to eq(false)
        end
  
        it "increments the @passed_check instance variable" do
          grammar_stats = GrammarStats.new
          expect { grammar_stats.check("the quick brown fox jumps over the lazy dog.") }.to change { grammar_stats.instance_variable_get(:@passed_check) }.by(1)
        end
  
        it "does not increment the @num_good instance variable" do
          grammar_stats = GrammarStats.new
          expect { grammar_stats.check("the quick brown fox jumps over the lazy dog.") }.to_not change { grammar_stats.instance_variable_get(:@num_good) }
        end
      end
  
      context "when given an empty string" do
        it "raises an error" do
          grammar_stats = GrammarStats.new
          expect { grammar_stats.check(" ") }.to raise_error("Not a sentence.")
        end
  
        it "does not increment the @passed_check instance variable" do
          grammar_stats = GrammarStats.new
          expect { grammar_stats.check("") }.to_not change { grammar_stats.instance_variable_get(:@passed_check) }
        end
  
        it "does not increment the @num_good instance variable" do
          grammar_stats
        end
    end
  end
end

