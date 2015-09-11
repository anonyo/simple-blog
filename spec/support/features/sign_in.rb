module Features
  def sign_in
    visit new_admin_session_path
    fill_in 'Email', with: 'anonyo.hossain@gmail.com'
    fill_in 'Password', with: 'hello123'
    click_on 'Sign in'
  end

  def create_new_post
    fill_in 'Title', with: 'Ruby Rocks'
    fill_in 'Subtitle', with: 'JAVA and PHP sucks'
    fill_in 'Body', with: 'Writing Ruby is so much fun!'
    click_on 'Submit'
  end
end
