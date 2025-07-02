
if Rails.env.development?
  user = User.find_or_create_by!(email: 'admin@example.com') do |u|
    u.password = 'password'
    u.password_confirmation = 'password'
  end

  puts "\e[1mLogin with: #{user.email} / password\e[0m"
end
