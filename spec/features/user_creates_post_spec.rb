require 'rails_helper'

feature 'User creates post' do
  scenario 'successfully' do
    visit new_post_path
    fill_in 'Title', with: 'Ruby Rocks'
    fill_in 'Subtitle', with: 'JAVA and PHP sucks'
    fill_in 'Body', with: 'Writing Ruby is so much fun!'
    click_on 'Submit'

    visit root_path

    expect(page).to have_css 'h2', text: 'Ruby Rocks'
  end
end

