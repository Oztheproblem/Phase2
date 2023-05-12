def task_todo(str)
    str.empty? ? false: str.include?("#TODO")
end