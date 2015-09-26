class HomeController < ApplicationController
  def index
    @posts = Post.by_newest
  end
end
