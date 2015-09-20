require 'rails_helper'

feature 'Admin can edit individual posts' do
  scenario 'successfully' do
    sign_in
    create_new_post
    click_on 'Ruby Rocks'
    click_on 'Edit Post'
    fill_in 'post_title', with: 'Ruby is awesome!'
    click_on 'Submit'

    expect(page).to have_content 'Ruby is awesome!'
  end
end
