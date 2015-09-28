module ApplicationHelper
  def default_heading_title
    SiteConfig.heading_title
  end
  def default_heading_subtitle
    SiteConfig.heading_subtitle
  end
  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-block"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end
end
