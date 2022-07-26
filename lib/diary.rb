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
end
