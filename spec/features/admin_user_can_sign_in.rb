require 'rails_helper'

feature 'Admin User can sign in' do
  scenario 'successfully' do
    sign_in

    expect(current_path).to eq root_path
  end
end
