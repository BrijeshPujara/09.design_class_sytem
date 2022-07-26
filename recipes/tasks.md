# Task Multi-Class Planned Design Recipe

## Describe the Problem

> As a user 
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them

> As a user 
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list. 

## Design the Class System

┌──────────────────────┐
│                      │        
│     TodoList         │
│                      │
│     - add            │
│     - list tasks     │
│                      │
│                      │
│                      │
└──────────┬───────────┘
           │
           │
           │
           │    TodoList has zero or
           │    more TodoTasks
           │
           │
           │
┌──────────┴───────────┐
│                      │
│     TodoTasks         │
│                      │
│     - mark complete  │
│     - title          │
│     - completed?     │
│                      │
└──────────────────────┘
```ruby
class Todolist
  def add(todo)
  # adds todo task
  end

  def all
  # returns all todo's
  end

  def completed

  end
end

class TodoTasks
  def initialize(title) # title is a string
  end

  def title
  # returns the title as a string
  end

  def mark_complete
  # marks a task as complete
  end

  def completed?
  # returns true or fale is task is complete
  end
end

```


## Create Examples as Integration Tests
```ruby
# 1
todo_list = TodoList.new
todo_1 = TodoTasks.new("do the washing")
todo_2 = TodoTasks.new("clean your room")
todo_list.add(todo_1)
todo_list.add(todo_2)
todo_list.all # => [todo_1, todo_2]

# 2
todo_list = TodoList.new
todo_1 = TodoTasks.new("do the washing")
todo_2 = TodoTasks.new("clean your room")
todo_list.add(todo_1)
todo_list.add(todo_2)
todo_2.mark_complete
todo_list.all # => [todo_1]

```
## Create Examples as Unit Tests

```ruby
# TodoList
# 1
todo_list = TodoList.new
todo_list.all # => []

# 2
todo_list = TodoList.new
todo_list.complete # => []

#TodoTasks
# 1
todo = TodoTask.new("do the washing")
todo.all # => "do the washing"

# 2
todo = TodoTask.new("do the washing")
todo.mark_complete # => false

# 3
todo = TodoTask.new("do the washing")
todo.completed? # => true

```

## Implement the Behaviour

