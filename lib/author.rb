class Author

  attr_accessor :name, :post

  @@post_count = 0

  def initialize(name)
    @name = name
    @post = []
  end

  def author=(author_name)
    @name = author_name
  end

  def posts
    Post.all.select {|posts| posts.author == self}
  end

  def add_post(post)
    @post << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(name)
    name = Post.new(name)
    add_post(post)
    @@post_count += 1 
  end
  
end
