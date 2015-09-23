class PagesController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
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
  def edit
    @page = Page.find(params[:id])
  end
  def update
    page = Page.find(params[:id])
    if page.update_attributes(page_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    page = Page.find(params[:id])
    page.destroy
    redirect_to root_path
  end
  private
  def page_params
    params.require(:page).permit(:title, :body, :subtitle)
  end
end
