require 'pry'
@@posts = []
class Author

    attr_accessor :name
    def initialize(name)
        @name = name

    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        new_post.author = self
        new_post
    end

    def posts
        @@posts = Post.all
        @@posts.select {|post|
            post.author == self
        }
    end

    def self.post_count
        @@posts = Post.all
        @@posts.length
    end
    


end
