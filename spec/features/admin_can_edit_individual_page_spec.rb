require 'rails_helper'

feature 'Admin can edit individual page' do
  scenario 'successfully' do
    sign_in
    create_about_us_page
    click_on 'About me'
    click_on 'Edit Page'
    #Perform Edit
    fill_in 'page_title', with: 'Resume'
    fill_in 'page_body', with: 'Some awesome experience'
    click_on 'Submit'

    expect(page).to have_css 'li', text: 'Resume'

  end
 scenario 'unsuccessfully without sign in' do
   sign_in
   create_about_us_page
   sign_out
   click_on 'About me'

   expect(page).not_to have_content 'Edit Page'
 end
end
