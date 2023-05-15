require 'debug_grammar_class'

RSpec.describe GrammarStats do
    describe "#check" do
      context "when given a valid sentence with full stop" do
        it "returns true" do
          grammar_stats = GrammarStats.new
          expect(grammar_stats.check("Hello world.")).to eq(true)
        end
      end

      context "valid sentence with !" do
        it "returns true" do
          grammar_stats = GrammarStats.new
          expect(grammar_stats.check("Hello world!")).to eq(true)
        end
      end

      context "valid sentence with ?" do
        it "returns true" do
          grammar_stats = GrammarStats.new
          expect(grammar_stats.check("Hello world?")).to eq(true)
        end
      end
      
      context "an empty string" do
        it "fails" do
          grammar_stats = GrammarStats.new
          expect{ grammar_stats.check("") }.to raise_error "Not a sentence."
        end
      end

      context "sentence does not start with capital letter" do
        it "fails" do
          grammar_stats = GrammarStats.new
          expect(grammar_stats.check("hello world.")).to eq false
        end
      end
    end
end    