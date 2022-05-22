class MusicLibrary

  def initialize
    @tracks = []
  end

  def add(track)
    fail "Error: only strings accepted" if !track.is_a? String
    fail "Error: track already listed" if @tracks.include?(track)
    @tracks << track if !track.empty? 
  end

  def look
    @tracks
  end

end