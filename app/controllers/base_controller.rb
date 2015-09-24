class BaseController < ApplicationController
  def new
    instance_variable_set("@#{target.downcase}", target_class.new)
  end

  def show
    instance_variable_set("@#{target.downcase}", target_class.find(params[:id]))
  end

  private
  # returns 'Post' as string
  def target
    controller_path.classify
  end

  # returns Post class
  def target_class
    target.constantize
  end
end
