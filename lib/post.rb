require 'pry'
class Post 
    @@all = []
    attr_accessor :title
    def initialize(title)
        @title = title
        @author = nil
        @@all << self

    end

    def author=(author)
        @author = author
        @author.posts << self
    end

    def author
        @author
    end

    def self.all
        @@all
    end

    def author_name
        if self.author == nil
            return nil
        elsif self.author !=nil
            return self.author.name
        end
    end


end
