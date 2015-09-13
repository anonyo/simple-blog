module Features
  def sign_in
    visit new_admin_session_path
    fill_in 'Email', with: 'anonyo.hossain@gmail.com'
    fill_in 'Password', with: 'hello123'
    click_on 'Sign in'
  end

  def sign_out
    visit root_path
    click_on 'Log Out'
  end
end
