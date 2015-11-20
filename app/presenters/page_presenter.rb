class PagePresenter < Struct.new(:page)
  def all_pages
    page.all
  end
end
