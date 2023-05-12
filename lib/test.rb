def task_todo(str)
    str.strip.empty? ? "fail" : str.include?("#TODO")
end
