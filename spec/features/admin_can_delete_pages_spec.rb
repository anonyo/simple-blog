require 'rails_helper'

feature 'Admin can edit individual page' do
  scenario 'successfully' do
    sign_in
    create_about_us_page
    click_on 'About me'
    #Perfom Page Destroy
    click_on 'Delete Page'

    expect(page).not_to have_css 'li', text: 'Resume'
  end
end
