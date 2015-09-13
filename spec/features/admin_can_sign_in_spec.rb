require 'rails_helper'

feature 'Admin signs in' do
  scenario 'successfully' do
    sign_in

    expect(page).to have_css 'li', text: 'Log Out'
  end
end

