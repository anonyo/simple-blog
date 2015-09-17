module ApplicationHelper
  def default_heading_title
    SiteConfig.heading_title
  end
  def default_heading_subtitle
    SiteConfig.heading_subtitle
  end
end
