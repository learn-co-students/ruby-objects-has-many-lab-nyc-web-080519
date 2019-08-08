class Author
  attr_accessor :name
  
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end


  def self.post_count=(song_count)
    @@post_count=song_count
  end 


  def posts #getter method to return @posts 
    @posts 
  end

  def add_post(post_string)
    post_string.author = self #says that the author instance is called on by the instance method posts and setting it equal to an instance of Author with self 
  end 

  def add_post_by_title(post_title)
    new_post_title = Post.new(post_title)
    new_post_title.author = self 
  end 

  def self.post_count
    @@post_count 
  end 


end # end of class Author 