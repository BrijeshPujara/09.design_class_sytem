require "phonebook"

RSpec.describe Phonebook do
  it "displays the phone number that's been entered" do
    entry_1 = Phonebook.new("1234")
    expect(entry_1.view).to eq "1234" # => "1234"
  end
end
