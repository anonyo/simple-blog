class ContactsController < BaseController
  def create
    contact = Contact.new(params[:contact])
    ContactMailer.admin_notification(contact).deliver
    redirect_to root_path, flash: { success: success_message }
  end
  private
  def success_message
    "Thanks for reaching out, I'll be in touch shortly!
     meanwhile, feel free to go through my blog."
  end
end
