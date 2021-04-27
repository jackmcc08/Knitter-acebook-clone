class User < ApplicationRecord
  has_many :posts
  has_many :likes

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
