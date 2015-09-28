require 'rails_helper'

feature 'User can contact us' do
  scenario 'successfully' do
    visit root_path
    click_on 'Contact me'
    fill_in 'contact_name', with: 'John Doe'
    fill_in 'contact_email', with: 'john@mail.com'
    fill_in 'contact_message', with: "You're awesome!"
    click_on 'Send'

    expect(page).not_to have_css 'h2', text: 'Contact Me'
  end
end
