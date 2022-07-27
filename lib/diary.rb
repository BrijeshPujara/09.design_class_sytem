class Diary
  def initialize
    @profile = []
    @todo = []
    @entry = []
  end

  def add(task, number, entry)
    @profile << number
    @todo << task
    @entry << entry
  end

  def list_number
    @profile
  end

  def list_task
    @todo
  end

  def list_entry
    @entry
  end

  def completed
    @todo.each.select do |todo|
       todo.completed? == true
    end
  end

  def reading_time(wpm, minutes)
    total = wpm * minutes
    entries = []

    # count_words = 2 
    # total = 2 

    @entry.each.select do |i|
        if i.count_words <= total
            entries << i
        end
    end

    # entries = "hello brijesh"
    entries


  end
end
