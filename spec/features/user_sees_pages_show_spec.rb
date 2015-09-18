require 'rails_helper'

feature 'user sees pages#show' do
  scenario 'successfully' do
    sign_in
    create_about_us_page
    click_on 'About me'

    expect(page).to have_css 'p', text: 'I am a passionate Ruby deveoper!'
  end
end
