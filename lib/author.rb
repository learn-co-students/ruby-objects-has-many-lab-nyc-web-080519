require 'pry'

class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end  # ends initialize method

  def posts
    Post.posts.select { |post| post.author == self }
  end  #ends posts method

  def add_post(post)
    post.author = self
    #binding.pry
  end  #ends add_post method

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
  end  #ends add_post_by_title method

  def self.post_count
    Post.posts.length
  end  # ends self.post_count method

end  #ends Author class