class ContactsController < BaseController
  def create
    contact = Contact.new(params[:contact])
    binding.pry
    redirect_to root_path
  end
end
