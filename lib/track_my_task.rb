def track_my_task(todo)
  fail "No task is set" if todo.nil?
  if todo.include? "TODO"
    return true
  else 
    return false
  end
end