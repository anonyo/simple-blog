class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def present(model)
    klass = "#{model.name}Presenter".constantize
    presenter = klass.new(model, self)
    presenter
  end
  helper_method :present, :present_pages
  def present_pages
    present(Page).all_pages
  end
end
