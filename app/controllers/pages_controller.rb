class PagesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create]
  def new
    @page = Page.new
  end
  def show
    @page = Page.find(params[:id])
  end
  def create
    page = Page.new(page_params)
    if page.save!
      redirect_to root_path
    else
      render :new
    end
  end
  private
  def page_params
    params.require(:page).permit(:title, :body, :subtitle)
  end
end
