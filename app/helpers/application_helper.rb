module ApplicationHelper
  def default_heading_title
    SiteConfig.heading_title
  end
  def default_heading_subtitle
    SiteConfig.heading_subtitle
  end
  def bootstrap_class_for(flash_type)
    { success: 'alert-success', error: 'alert-error',
      alert: 'alert-block', notice: 'alert-info' }[flash_type] || flash_type.to_s
  end
end
