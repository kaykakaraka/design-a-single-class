{{PROBLEM}} Class Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface

class MusicLibrary
  def initialize
    # ...
  end

  def add(track) # track is a string
    # throws an error if track is already in the list
    # adds track to list
    # returns nothing
  end

  def look
    #returns a list of tracks
  end
end


3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# 1
library = MusicLibrary.new
library.look # => []

# 2
library = MusicLibrary.new
library.add("My heart will go on")
library.look # => ["My heart will go on"]

# 3
library = MusicLibrary.new
library.add("My heart will go on")
library.add("Track number 4")
library.look # => ["My heart will go on", "Track number 4"]

# 4
library = MusicLibrary.new
library.add("My heart will go on")
library.add("My heart will go on") fails with "Error: track already listed"

# 5
library = MusicLibrary.new
library.add("")
library.look => []

# 6 - user does not enter a string for add
library = MusicLibrary.new
library.add(30) # fails with "Error: only strings accepted"

# EXAMPLE

# 1
reminder = Reminder("Kay")
reminder.remind_me_to("Walk the dog")
reminder.remind() # => "Walk the dog, Kay!"

# 2
reminder = Reminder("Kay")
reminder.remind() # fails with "No task set."

# 3
reminder = Reminder("Kay")
reminder.remind_me_to("")
reminder.remind() # => ", Kay!"
Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.