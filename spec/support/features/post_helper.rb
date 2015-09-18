module Features
  def create_new_post
    visit new_post_path
    fill_in 'post_title', with: 'Ruby Rocks'
    fill_in 'post_subtitle', with: 'JAVA and PHP sucks'
    fill_in 'post_body', with: 'Writing Ruby is so much fun!'
    click_on 'Submit'
  end

  def create_about_us_page
    visit new_page_path
    fill_in 'page_title', with: 'About me'
    fill_in 'page_subtitle', with: 'code, blog, read'
    fill_in 'page_body', with: 'I am a passionate Ruby deveoper!'
    click_on 'Submit'
  end
end
