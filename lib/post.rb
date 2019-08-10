class Post
 
  attr_accessor :posts, :author, :title

    @@posts = []

  def initialize(title)
    @title = title
    @@posts << self
  end #ends initialize method

  def self.posts
    @@posts
  end  #ends self.posts method

end #ends Post class