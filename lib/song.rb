class Song
    @@all = []
    attr_accessor :name, :artist
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist == nil
            return nil
        elsif self.artist != nil
            return self.artist.name
        end
    end



end
