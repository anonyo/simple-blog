class ContactMailer < ApplicationMailer
  default from: "from@example.com"
  def admin_notification(contact)
    @contact = contact
    mail(to: admin_email, subject: "You've got mail")
  end
end
