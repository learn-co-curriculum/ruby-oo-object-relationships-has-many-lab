require 'pry'
class Song

    @@all = []

    attr_accessor :title, :artist

    def initialize(title)
        @title = title
        @@all << self
        
    end

    def self.all
        @@all
    end

    def name
        @title
    end
            
    def artist_name
        if self.artist == nil
            return nil
        else 
            return self.artist.name
        end
    end


    

end
