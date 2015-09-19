class CreateAdmin
  def process
    Admin.create(email: admin_email,
                 password: admin_password,
                 password_confirmation: admin_password)
    output_message
  end
  private
  def admin_email
    ENV['ADMIN_EMAIL']
  end

  def admin_password
    ENV['ADMIN_PASSWORD']
  end
  def output_message
    if Admin.last.email == ENV['ADMIN_EMAIL']
      puts 'Admin created'
    else
      'Unable to create Admin, make sure admin email and password is set in
      your environment variables.'
    end
  end
end
