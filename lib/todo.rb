class Todo
  def initialize(task)
    @todo = task
    @completed = false
  end

  def list 
    @todo
  end
  
  def mark_as_completed
    @completed = true
  end

  def completed?
    @completed
  end

end