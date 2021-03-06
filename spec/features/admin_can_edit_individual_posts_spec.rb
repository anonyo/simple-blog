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
  scenario 'unsuccessfully without sign in' do
    sign_in
    create_new_post
    sign_out
    click_on 'Ruby Rocks'

    expect(page).not_to have_content 'Edit Post'
  end
end
