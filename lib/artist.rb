require 'pry'

class Artist   

  attr_accessor :name

def self.song_count=(song_count)
  @@song_count=song_count
end 

@@song_count = 0 #song counter 

def initialize(name)
  @name = name # @name is and instance variable that contains the artist's name 
  @songs = []  #refers to an array of song instances 
end 

def songs #getter method to return @songs 
  @songs 
end


def add_song(song) #takes in an instance of Song class 
  song.artist = self 
end

def add_song_by_name(name) 
  new_song=Song.new(name)
  new_song.artist = self 
end

def self.song_count 
  @@song_count
end 

end #end of Artist Class 