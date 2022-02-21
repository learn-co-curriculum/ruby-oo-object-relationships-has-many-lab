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

    def add_post_by_title(post)

    end

    def posts
        # binding.pry
        @@posts.select  { |post|
            post.author == self
        }
    end

    def post_count

    end



end
