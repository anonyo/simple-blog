class PostsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :subtitle, :body)
  end
end
