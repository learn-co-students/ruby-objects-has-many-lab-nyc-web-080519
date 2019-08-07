class Artist

    attr_accessor :name

        @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end 

    def add_song(song)
        song.artist = self

    end

    def add_song_by_name(s_n)
        s = Song.new(s_n)
        s.artist = self
    end

    def self.song_count
        Song.all.length 
    end

    def songs
        Song.all.select {|s| s.artist}
    end


end