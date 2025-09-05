# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(email: 'writer1@example.com', password: 'example', password_confirmation: 'example', role: 0) # this creates a user with the writer role
User.create(email: 'writer2@example.com', password: 'example', password_confirmation: 'example', role: 0) # second writer
User.create(email: 'editor@example.com', password: 'example', password_confirmation: 'example', role: 1) # this creates a user with the editor role
