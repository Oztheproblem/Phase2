require "todo"

RSpec.describe Todo do
    it "it returns an added task" do
      todo_1 = Todo.new("wash the dishes")    
      expect(todo_1.task).to eq "wash the dishes"
      end
    end
end