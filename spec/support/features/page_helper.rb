module Features
  def create_about_us_page
    visit new_page_path
    fill_in 'page_title', with: 'About me'
    fill_in 'page_subtitle', with: 'code, blog, read'
    fill_in 'page_body', with: 'I am a passionate Ruby deveoper!'
    click_on 'Submit'
  end
end
