class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def present(model, presenter_class=nil)
    klass = presenter_class || "#{model.class.name}Presenter".constantize
    presenter = klass.new(model, self)
    presenter
  end
  helper_method :present, :present_pages
  def present_pages
    present(Page, PagePresenter).all_pages
  end
end
