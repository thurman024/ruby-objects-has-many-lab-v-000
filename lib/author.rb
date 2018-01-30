class Author
  attr_accessor :name
  @@posts = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    #new_post = Post.new(title)
    @posts << new_post
    new_post.author = self
    @@posts += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end

  def post_count
    @@posts
  end
  
