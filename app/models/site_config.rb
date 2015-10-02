class SiteConfig
  def self.logo
    ENV['SITE_NAME']
  end
  def self.title
    ENV['SITE_TITLE']
  end
  def self.heading_title
    ENV['SITE_HEADING_TITLE']
  end
  def self.heading_subtitle
    ENV['SITE_HEADING_SUBTITLE']
  end
  def self.facebook_url
    ENV['FACEBOOK_URL']
  end
  def self.twitter_url
    ENV['TWITTER_URL']
  end
  def self.github_url
    ENV['GIHUB_URL']
  end
end
