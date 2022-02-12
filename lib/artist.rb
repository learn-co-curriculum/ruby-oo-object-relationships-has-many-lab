require 'pry'

class Artist

    @@songs = []

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
        @@songs << song
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        @@songs << song
        song
    end


    def songs
        # binding.pry
        songs = Song.all.select { |song|
            song.artist == self
        }
        songs
    end


# binding.pry
end

