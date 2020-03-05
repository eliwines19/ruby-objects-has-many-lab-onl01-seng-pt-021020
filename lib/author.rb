class Author

  attr_accessor :name, :post

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
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(post)
  end


end
