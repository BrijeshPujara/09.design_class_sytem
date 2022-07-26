class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo)
    @todo_list << todo
  end

  def all
    @todo_list.reject do |todo|
        todo.completed?
    end
  end

  def completed
    @todo_list.select do |todo|
        todo.completed?
    end
  end
end