class Song  
#:artist is an instance
  attr_accessor :title, :artist, :name 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self  
  end 

  def artist=(artist_instance) #has to take in an artist instance
    @artist = artist_instance
    Artist.song_count += 1 
    artist_instance.songs << self 
  end  

  def self.all 
    @@all
  end 

  def artist_name 
    if @artist != nil
      return @artist.name
    else 
      nil
    end 
  end 

end #end of class Song 