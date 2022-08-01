require 'pry'

class Author
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @posts = []

    end

    def posts=(posts)
        @posts = Post.all.select {
            post.author == self
        }
    end

    def posts 
        @posts
    end

    def add_post(post_one)
        post_one.author = self
        @posts << post_one
        post_one
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        self.add_post(new_post)
    end

    def self.post_count
        Post.all.select { |post|
            post.author != nil
        }.count
    end

end
