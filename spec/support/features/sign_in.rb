module Features
  def sign_in
    create_admin_user
    visit new_admin_session_path
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Password', with: 'foobar'
    click_on 'Sign in'
  end

  def sign_out
    click_on 'Log Out'
  end
  def create_admin_user
    Admin.create(email: 'foo@bar.com',
                 display_name: 'foo_bar',
                 password: 'foobar',
                 password_confirmation: 'foobar')
  end
end
