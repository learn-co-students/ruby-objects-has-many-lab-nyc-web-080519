class Artist
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end  #ends initialize

  def songs
    Song.all.select {|song| song.artist == self}
  end  #ends song method

  def add_song(song)
    song.artist = self
  end  # ends add_song method

  def add_song_by_name(song_name)
    Song.new(song_name).artist = self
  end  # ends add_song_by_name method

  def self.song_count
    Song.all.length
  end
  
end  # ends Artist class