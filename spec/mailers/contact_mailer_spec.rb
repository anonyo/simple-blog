require "rails_helper"

describe ContactMailer do
  describe '#admin_notification' do
    before(:each) do
      ActionMailer::Base.delivery_method = :test
      ActionMailer::Base.perform_deliveries = true
      ActionMailer::Base.deliveries = []
      @contact = Contact.new
      ContactMailer.admin_notification(@contact).deliver
    end

    it 'should send an email' do
      expect(ActionMailer::Base.deliveries.count).to eq 1
    end
    it 'returns correct subject' do
      expect(ActionMailer::Base.deliveries.first.subject).to eq "You've got mail"
    end
  end
end
