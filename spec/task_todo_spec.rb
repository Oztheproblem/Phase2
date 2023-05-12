require "task_todo"

RSpec.describe "task_todo method"  do
  context "string contains '#TODO'" do
    it "results as true" do 
      expect(task_todo("#TODO laundry")).to eq true
    end
  end

  context "string contains task but wrong todo punctuation'" do
    it "results as false" do 
      expect(task_todo("todo laundry")).to eq false
    end
  end

  context "string is empty" do
    it "results as false" do
      expect(task_todo(" ")).to eq false
    end
  end  
end
