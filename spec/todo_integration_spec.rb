require "todo"
require "todo_list"

RSpec.describe "integration" do
  describe "when a task is added" do
    it "returns incomplete added task" do
      todo_list = TodoList.new
      todo_1 = Todo.new("wash the dishes")
      todo_list.add(todo_1)
      expect(todo_list.incomplete).to eq [todo_1]
    end

    it "returns completed task" do
      todo_list = TodoList.new
      todo_2 = Todo.new("iron my suit")
      todo_list.add(todo_2)
      todo_2.mark_done!
      expect(todo_list.complete).to eq [todo_2]
    end

    it "returns multiple completed tasks" do
      todo_list = TodoList.new
      todo_2 = Todo.new("iron my suit")
      todo_3 = Todo.new("water plants")
      todo_list.add(todo_2)
      todo_list.add(todo_3)
      todo_2.mark_done!
      todo_3.mark_done!
      expect(todo_list.complete).to eq [todo_2, todo_3]
    end
  end

  context "marks todos as completed" do
    it "marks 1 todo as complete" do
      todo_list = TodoList.new
      todo_1 = Todo.new("eat dinner")
      todo_list.add(todo_1)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo_1]
    end 
    it "marks multiple todos as complete" do
      todo_list = TodoList.new
      todo_1 = Todo.new("eat breakfast")
      todo_2 = Todo.new("take a shower")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo_1, todo_2]
    end 
  end 
end 

