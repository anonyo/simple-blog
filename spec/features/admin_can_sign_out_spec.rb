require 'rails_helper'

feature 'Admin sign out' do
  scenario 'successfully' do
    sign_in
    click_on 'Log Out'

    expect(page).not_to have_css 'li', text: 'Log Out'
  end
end
