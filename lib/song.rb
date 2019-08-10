class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end  # ends initialize method
 
  def self.all
    @@all
  end  #ends self.all method

end  #ends Song class