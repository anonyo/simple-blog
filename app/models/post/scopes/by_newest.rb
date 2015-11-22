class Post::Scopes::ByNewest
  def call
    Post.order('created_at desc')
  end
end
