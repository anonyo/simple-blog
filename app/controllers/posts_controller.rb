class PostsController < BaseController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
end
