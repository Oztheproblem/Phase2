require "task_todo"

RSpec.describe "task_todo method" do
  context "string contains '#TODO'" do
    it "results in true" do
      expect(task_todo("#TODO laundry")).to eq(true)
    end
  end

  context "string contains task but wrong todo punctuation" do
    it "results in false" do
      expect(task_todo("todo laundry")).to eq(false)
    end
  end

  context "string is empty" do
    it "results in false" do
      expect { task_todo("") }.to_not raise_error
    end
  end
end
