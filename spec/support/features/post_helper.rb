module Features
  def create_new_post
    visit new_post_path
    fill_in 'post_title', with: 'Ruby Rocks'
    fill_in 'post_subtitle', with: 'JAVA and PHP sucks'
    fill_in 'post_body', with: 'Writing Ruby is so much fun!'
    click_on 'Submit'
  end

end
