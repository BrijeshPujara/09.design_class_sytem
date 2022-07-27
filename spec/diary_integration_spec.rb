require "diary"
require "diary_entry"
require "phonebook"
require "todo"

RSpec.describe "Integration test" do
  context "adds new diary entry, task and phone number" do
    it "returns entries " do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "hello")
      task = Todo.new("do the washing")
      number = Phonebook.new("1234")
      diary.add(task, number, entry_1)
      expect(diary.list_task).to eq [task]
      expect(diary.list_number).to eq [number]
      expect(diary.list_entry).to eq [entry_1]      
    end

    it "returns a new diary entry" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "hello")
      task = Todo.new("do the washing")
      number = Phonebook.new("1234")
      diary.add(task, number, entry_1)
      expect(diary.list_entry).to eq [entry_1]  
    end

    it "returns a new task entry" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "hello")
      task = Todo.new("do the washing")
      number = Phonebook.new("1234")
      diary.add(task, number, entry_1)
      expect(diary.list_task).to eq [task]  
    end

    it "returns a new phone number entry" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "hello")
      task = Todo.new("do the washing")
      number = Phonebook.new("1234")
      diary.add(task, number, entry_1)
      expect(diary.list_number).to eq [number]  
    end

    it "marks task as completed" do
      diary = Diary.new
      task = Todo.new("do the washing")
      entry_1 = DiaryEntry.new("title_1", "hello")
      number = Phonebook.new("1234")
      diary.add(task, number, entry_1)
      task.mark_as_completed
      expect(diary.completed).to eq [task]  
    end

    it "calculates the closest entry with the best time" do
      diary = Diary.new
      task = Todo.new("do the washing")
      entry_1 = DiaryEntry.new("title_1", "hello brijesh")
      number = Phonebook.new("1234")
      diary.add(task, number, entry_1)
      expect(diary.reading_time(2,1)).to eq [entry_1]  
    end
end

end
