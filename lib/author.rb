require 'pry'

class Author
  attr_accessor :name

  @@all_authors = []

  def initialize(name)
    @name = name
    @@all_authors << self
  end

  def self.all_authors
    @@all_authors
  end

  def posts 
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(title)
    title.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def self.post_count
    Post.all.count
  end

end