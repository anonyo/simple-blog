require 'rails_helper'

feature 'Admin creates post' do
  scenario 'successfully after signing in' do
    sign_in
    create_new_post

    expect(page).to have_css 'h2', text: 'Ruby Rocks'
  end
  scenario 'unsuccessfully without signing in' do
    visit new_post_path

    expect(page).to have_css 'h2', text: 'Log in'
  end
end
