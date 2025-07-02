# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

seed_email = ENV.fetch('SEED_EMAIL', 'test@example.com')
seed_password = ENV.fetch('SEED_PASSWORD', 'password123')
user = User.find_or_create_by!(email: seed_email) do |u|
  u.password = seed_password
  u.password_confirmation = seed_password
end

puts "Created seed user: #{seed_email} / #{seed_password}"
