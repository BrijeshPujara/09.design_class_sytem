require "todo_list"

RSpec.describe TodoList do
  it "adds a todo into todo_list" do
    todo_list = TodoList.new
    expect(todo_list.add("do the washing")).to eq ["do the washing"]
  end

  it "returns an empty list if no entries" do
    todo_list = TodoList.new
    expect(todo_list.all).to eq []  
  end
end
ﬁ