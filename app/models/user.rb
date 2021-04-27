class User < ApplicationRecord
  has_many :posts

  has_many :friends
  has_many :new_friends, :through => :friends
  
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
