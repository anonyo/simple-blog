require 'rails_helper'

feature 'User sees posts#show' do
  scenario 'successfully' do
    sign_in
    create_new_post
    sign_out

    click_on 'Ruby Rocks'

    expect(page).to have_css 'h1', 'Ruby Rocks'
  end
end
