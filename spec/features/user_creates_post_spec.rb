require 'rails_helper'

feature 'User creates post' do
  scenario 'successfully after signing in' do
    sign_in
    visit new_post_path
    create_new_post


    expect(page).to have_css 'h2', text: 'Ruby Rocks'
  end
  scenario 'gets forwarded to admin sign in path' do
    visit new_post_path

    expect(current_path).to eq new_admin_session_path
  end
end
