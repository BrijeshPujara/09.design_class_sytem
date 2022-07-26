class TodoTasks
  def initialize(title)
    @title = title
    @complete = false
  end

  def title
    @title
  end

  def mark_complete
    @complete = true

  end

  def completed?
    @complete
  end
end