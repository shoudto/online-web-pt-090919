class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def songs
        # The commended out code is an alternative approach. Instead of storing each artist's
        # songs inside of an instance variable, we take out the necessity of storing that data
        # by calling upon the Song class to return all the song instances, which we then iterate
        # through to find the songs with an artist matching whatever instance of artist called this method
        
        # Song.all.select{|song| song.artist == self }
        @songs
    end

    def add_song(song)
        songs << song
    end

    def self.find_or_create_by_name(name)
        # Given an artist name, iterate through all Artists and return the artist instance
        # with that name, if it exists. If it does not, instantiate a new Artist with that name
        self.all.find{|artist| artist.name == name} || self.new(name)
    end

end