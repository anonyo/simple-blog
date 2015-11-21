class PagePresenter < Struct.new(:page, :view_context)
  def all_pages
    page.all
  end
end
