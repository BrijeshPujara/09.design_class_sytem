require "todo_list"
require "todo_tasks"

RSpec.describe "Integration test for todo_list and todo_taks" do
  it "adds a new todo_tasks and returns a todo_list" do
    todo_list = TodoList.new
    todo_1 = TodoTasks.new("do the washing")
    todo_2 = TodoTasks.new("clean your room")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    expect(todo_list.all).to eq [todo_1. todo_2]  
  end

end
