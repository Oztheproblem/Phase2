require "todo"

RSpec.describe Todo do
    it "it returns an added task" do
      todo_1 = Todo.new("wash the dishes")    
      expect(todo_1.task).to eq "wash the dishes"
    end

    it "it returns false when task added but not done" do
      todo_1 = Todo.new("wash the dishes")    
      expect(todo_1.done?).to eq false
    end

    it "it returns true when task done" do
      todo_1 = Todo.new("wash the dishes")  
      todo_1.mark_done!  
      expect(todo_1.done?).to eq true
    end
end