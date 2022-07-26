require "todo_tasks"

RSpec.describe TodoTasks do 
  it "returns the todo as a string" do
    todo = TodoTasks.new("do the washing")
    expect(todo.title).to eq "do the washing"  
  end

  it "returns false is the task is not complete" do
    todo = TodoTasks.new("do the washing")
    expect(todo.completed?).to eq false  
  end

  it "returns true is the task is complete" do
    todo = TodoTasks.new("do the washing")
    todo.mark_complete
    expect(todo.completed?).to eq true
  end
end