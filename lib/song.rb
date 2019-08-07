class Song
    @@all = []

    attr_accessor :artist, :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            self.artist.name
        end
    end
end