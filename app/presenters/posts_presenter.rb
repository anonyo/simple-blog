class PostsPresenter < Struct.new(:post, :view)
  def all_posts
    post.all
  end
end
