require "todo"

RSpec.describe ToDo do

  context "no task have been entered" do
    it "has an empty list" do
      todo = ToDo.new
      result = todo.view_list
      expect(result).to eq []
    end
  end

  context "an empty string is entered" do
    it "has an empty list" do
      todo = ToDo.new
      todo.add("")
      result = todo.view_list
      expect(result).to eq []
    end
  end

  context "one task is entered" do
    it "returns the task" do
      todo = ToDo.new
      todo.add("Take out the bins")
      result = todo.view_list
      expect(result).to eq ["Take out the bins"]
    end
  end

  context "two tasks are entered" do
    it "shows both tasks" do
      todo = ToDo.new
      todo.add("Take out the bins")
      todo.add("Wash your hair")
      result = todo.view_list
      expect(result).to eq ["Take out the bins", "Wash your hair"]
    end
  end

  context "a task is completed" do
    it "removes the task" do
      todo = ToDo.new
      todo.add("Take out the bins")
      todo.add("Wash your hair")  
      todo.complete("Take out the bins")
      result = todo.view_list
      expect(result).to eq ["Wash your hair"]
    end
  end

  context "two tasks are added and then completed" do
    it "has an empty list" do
      todo = ToDo.new
      todo.add("Take out the bins")
      todo.add("Wash your hair")
      todo.complete("Take out the bins")
      todo.complete("Wash your hair")
      todo.view_list
    end
  end

  context "user tries to complete a task that isn't set" do
    it "fails" do
      todo = ToDo.new
      todo.add("Take out the bins")
      expect { todo.complete("Wash your hair") }.to raise_error "Error, no such task listed"
    end
  end   
end