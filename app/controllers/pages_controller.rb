class PagesController < BaseController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

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
