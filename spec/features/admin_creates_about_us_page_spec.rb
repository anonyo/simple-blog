require 'rails_helper'

feature 'Admin creates pages' do
  scenario 'successfully' do
    sign_in
    create_about_us_page

    expect(page).to have_css 'li', text: 'About me'
  end
end
