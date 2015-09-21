class PostsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create]

  def new
  end

  def show
  end

  def create
    post = Post.new(post_params)
    if post.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if post.update_attributes(post_params)
      redirect_to post
    else
      render :edit
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :subtitle, :body)
  end

  def post
    @cached_post ||= Post.find_or_build(params[:id])
  end
  helper_method :post
end
