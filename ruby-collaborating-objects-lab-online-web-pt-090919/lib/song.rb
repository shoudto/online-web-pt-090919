class Song

    attr_reader :artist

    def initialize(name)
        @name = name
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
    end

    # We would need this method if we were relying on the Song @@all variable inside our
    # artist songs instance method
    # def self.all
    #     @@all
    # end

end