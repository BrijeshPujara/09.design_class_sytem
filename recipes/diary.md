# Diary-Exercise Multi-Class Planned Design Recipe

## Describe the Problem

> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries

## Design the Class System

> Diary - profile, todo, diaryentry, reading_time
> DiaryEntry - title, contents, count_words
> Phonebook - number
> ToDo - list, mark_as_completed, completed?

                   ┌───────────────────────────┐            ┌─────────────────────────────┐            ┌──────────────────────────────┐
                   │                           │            │                             │            │                              │
                   │      Dairy                │            │       diaryEntry            │            │           Todo               │
                   │                           │            │                             │            │                              │
                   │     - add(todo, number)   │            │      -title                 │            │        - add(diary)          │
                   │     - all                 ├──────────► │      -contents              ├──────────► │        - mark_as completed?  │
                   │     - reading_time        │            │      -count_words           │            │        - completed?          │
                   │                           │            │                             │            │                              │
                   │                           │            │                             │            │                              │
                   │                           │            │                             │            │                              │
                   │                           │            │                             │            │                              │
                   └───────────────────────────┘            └─────────────────────────────┘            └──────────────────────────────┘


## Implement Integration Tests
```ruby
# Integration tests
# 1. 

diary = Diary.new
entry_1 = DiaryEntry.new("title_1", "hello")
task = Todo.new("do the washing")
number = Phonebook.new("1234")
diary.add(entry1)
diary.add(task)
diary.add(number)
diary.list_number # => [number]
diary.list_entry # => [entry1]
diary.list_task # => [task]

# 2. 
diary = Diary.new
entry_1 = DiaryEntry.new("title_1", "hello")
diary.add(entry1)
diary.list_entry # => [entry1]

# 3.
diary = Diary.new
task = Todo.new("do the washing")
diary.add(task)
diary.list_task # => [task]

# 4.
diary = Diary.new
number = Phonebook.new("title_1", "hello")
diary.add(number)
diary.list_number # => [number]

# 5.
diary = Diary.new
task = Todo.new("do the washing")
task1 = Todo.new("go to the gym")
diary.add(task)
diary.add(task1)
task.mark_as_completed
diary.completed # => [task]











```



## Implement Unit Tests
```ruby
# Diary
# 1.

```

## Implement the Behaviour