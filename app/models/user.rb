class User < ApplicationRecord
  has_secure_password

  has_many :sessions, dependent: :destroy
  has_many :posts

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  enum role: %i[writer editor]

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
