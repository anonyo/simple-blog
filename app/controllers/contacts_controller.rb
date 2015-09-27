class ContactsController < BaseController
  def create
    contact = Contact.new(params[:contact])
    ContactMailer.admin_notification(contact).deliver
    redirect_to root_path
  end
end
