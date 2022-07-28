class Artist
    attr_accessor :name
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs = Song.all.select { |song|
            song.artist == self
        }
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end
    




end

