require "todo"

RSpec.describe Todo do
  it "marks tasks as completed" do
    task = Todo.new("do the washing")
    task1 = Todo.new("go to the gym")
    task.mark_as_completed
    expect(task.completed?).to eq true # => true
  end
    
end
