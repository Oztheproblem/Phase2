class TodoList
    def initialize
      @todo_list = []
    end
  
    def add(todo)
      @todo_list << todo
      # todo is an instance of Todo
      # Returns nothing
    end
  
    def incomplete
      @todo_list.empty? ? (fail "entries cannot be empty") : @todo_list
    end
      # Returns all non-done todos
  
    def complete
      @todo_list.empty? ? (fail "nothing completed.") : @todo_list
      @Entry = []
      @todo_list.each do |entry|
        if entry.done? == true
          @Entry << entry
        end
      end
      @Entry
      # Returns all complete todos
    end
    
  
    def give_up!
      @todo_list.each do |entry|
        entry.mark_done!
      # Marks all todos as complete
      end
    end
  end
  