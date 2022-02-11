require 'pry'

class Artist

    @@songs = []

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def add_song(song)

        # method verbiage here
    end
    

    def songs
        songs = @@songs.select { |song|
            song.artist == self
        }
        songs
    end


# binding.pry
end

