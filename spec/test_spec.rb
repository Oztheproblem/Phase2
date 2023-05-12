require "test"

RSpec.describe "test method" do
    context "given an empty string" do
      it "returns fail" do
        expect(task_todo("")).to eq("fail")
      end
    end

    context "string has TODO " do
      it "returns fail" do
        expect(task_todo("TODO")).to eq false
        end   
    end

    context "string has random word " do
        it "returns fail" do
          expect(task_todo("backflip")).to eq false
          end   
      end

    context "string has #TODO " do
        it "returns true" do
          expect(task_todo("#TODO") ).to eq true
        end
    end
end