require 'rails_helper'

feature 'Admin can edit individual posts' do
  scenario 'successfully' do
    sign_in
    create_new_post

    click_on 'Ruby Rocks'
    click_on 'Delete Post'
    visit root_path

    expect(page).not_to have_content('Ruby Rocks')
  end
end
