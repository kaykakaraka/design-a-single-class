require 'music_library'

RSpec.describe MusicLibrary do

  context "user does not add any tracks" do
    it "has an empty list" do
      library = MusicLibrary.new
      result = library.look   
      expect(result).to eq []
    end
  end

  context "user adds one track" do
    it "shows the track in the list" do
      library = MusicLibrary.new
      library.add("My heart will go on")
      result = library.look
      expect(result).to eq ["My heart will go on"]
    end
  end

  context "user adds two tracks" do
    it "shows both tracks" do
      library = MusicLibrary.new
      library.add("My heart will go on")
      library.add("Track number 4")
      result = library.look
      expect(result).to eq ["My heart will go on", "Track number 4"]
    end
  end

  context "user tries to add the same track twice" do
    it "fails" do
      library = MusicLibrary.new
      library.add("My heart will go on")
      expect { library.add("My heart will go on")  }.to raise_error "Error: track already listed"
    end
  end    

  context "user enters only an empty string as the track" do
    it "has an empty list" do
      library = MusicLibrary.new
      library.add("")
      result = library.look
      expect(result).to eq []
    end
  end

  context "user enters track not as a string" do
    it "fails" do
      library = MusicLibrary.new
      expect { library.add(30) }.to raise_error "Error: only strings accepted"
    end
  end
  
end