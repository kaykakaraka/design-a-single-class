{PROBLEM}} Class Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.

class ToDo
  def initialize
    # ...
  end

  def add(task) #task is a string
    # Adds task to a list of tasks
    # No return value
  end

  def view_list
    # returns the list of tasks
  end

  def complete(task) # task is a string
    # throws an error if the task is not there to complete
    # removes the task from the list of tasks
  end
end


3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# 1
todo = ToDo.new
todo.view_list # => []

# 2
todo = ToDo.new
todo.add("")
todo.view_list # => []

# 3
todo = ToDo.new
todo.add("Take out the bins")
todo.view_list # => ["Take out the bins"]

# 4
todo = ToDo.new
todo.add("Take out the bins")
todo.add("Wash your hair")
todo.view_list # => ["Take out the bins", "Wash your hair"]

# 5
todo = ToDo.new
todo.add("Take out the bins")
todo.add("Wash your hair")
todo.complete("Take out the bins")
todo.view_list # => ["Wash your hair"]

# 6
todo = ToDo.new
todo.add("Take out the bins")
todo.add("Wash your hair")
todo.complete("Take out the bins")
todo.complete("Wash your hair")
todo.view_list # => []

# 7
todo = ToDo.new
todo.add("Take out the bins")
todo.complete("Wash your hair") => "Error, no such task listed"


4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.