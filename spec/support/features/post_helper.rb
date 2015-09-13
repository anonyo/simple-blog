module Features
  def create_new_post
    visit new_post_path
    fill_in 'Title', with: 'Ruby Rocks'
    fill_in 'Subtitle', with: 'JAVA and PHP sucks'
    fill_in 'Body', with: 'Writing Ruby is so much fun!'
    click_on 'Submit'
  end
end
