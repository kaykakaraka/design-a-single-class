class ToDo

  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task if !task.empty?
  end

  def complete(task)
    fail "Error, no such task listed" if !@tasks.include?(task)
    @tasks.delete(task)
  end

  def view_list
    @tasks
  end

end