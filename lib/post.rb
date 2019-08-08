class Post

   attr_accessor :title, :author

   @@all = []

   def initialize(title)
    @title = title
    @@all << self
  end

  def author=(author_instance)
    @author = author_instance
    Author.post_count +=1 
    author_instance.posts << self
  end

   def self.all
    @@all
  end

   def author_name
    if author
        author.name
    end
  end

 end 