class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(title)
    new_post = Post.new(title)
    @posts << new_post
    new_post.author = self
  end
