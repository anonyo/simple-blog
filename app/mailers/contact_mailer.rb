class ContactMailer < ApplicationMailer
  default from: admin_email
  def admin_notification(contact)
    @contact = contact
    mail(to: admin_email, subject: "You've got mail")
  end
end
