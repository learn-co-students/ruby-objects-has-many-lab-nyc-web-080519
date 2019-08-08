class Artist
  attr_accessor :name

  @@all_artists = []

  def initialize(name)
    @name = name
    @@all_artists << self
  end

  def self.all_artists
    @@all_artists
  end

  def add_song(name)
    name.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.song_count
    Song.all.count
  end


end #end of Artist class