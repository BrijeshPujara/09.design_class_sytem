require "diary_entry"

RSpec.describe DiaryEntry do
  it "adds the title and contents" do
    entry_1 = DiaryEntry.new("title_1", "hello brijesh")
    entry_2 = DiaryEntry.new("title_2", "hello my name is brijesh")
    expect(entry_1.title).to eq "title_1" # => "title_1"
    expect(entry_2.contents).to eq "hello my name is brijesh" # => "title_2"
  end

  it "returns the length of the conents" do
    entry_1 = DiaryEntry.new("title_1", "hello brijesh")
    entry_2 = DiaryEntry.new("title_2", "hello my name is brijesh")
    expect(entry_1.count_words).to eq 2
  end

end
