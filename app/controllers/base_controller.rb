class BaseController < ApplicationController
  def new
    instance_variable_set("@#{target.downcase}", target_class.new)
  end

  def show
    instance_variable_set("@#{target.downcase}", find_target_class)
  end

  def create
    if initialized_class.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    instance_variable_set("@#{target.downcase}", find_target_class)
  end

  def update
    if find_target_class.update_attributes(target_params)
      redirect_to find_target_class
    else
      render :edit
    end
  end

  def destroy
    find_target_class.destroy
    redirect_to root_path
  end

  private
  # Assuming target controller is PostsController
  # Returns 'Post' as string
  def target
    controller_path.classify
  end

  # Returns Post class
  def target_class
    target.constantize
  end

  # Same as Post.find(params[:id])
  def find_target_class
    target_class.find(params[:id])
  end

  # Same as Post.new(post_params)
  def initialized_class
    target_class.new(target_params)
  end

  #Returns :post
  def target_to_sym
    target.downcase.to_sym
  end

  def target_params
    params.require(target_to_sym).permit(target_class.column_names)
  end
end
