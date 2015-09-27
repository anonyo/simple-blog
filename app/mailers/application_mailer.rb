class ApplicationMailer < ActionMailer::Base
  def admin_email
    ENV['ADMIN_EMAIL']
  end
end
