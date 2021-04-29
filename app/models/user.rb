class User < ApplicationRecord
  has_many :posts

  # has_many :friends
  # has_many :new_friends, :through => :friends

  has_many :user_friends, :foreign_key => "user_id", :class_name => "Friend"
  has_many :other_user_friends, :foreign_key => "other_user_id", :class_name => "Friend"


  # has_many :payer_payments, class_name: 'Payment',
  #                           foreign_key: 'payer_id'
  # has_many :payee_payments, class_name: 'Payment',
  #                           foreign_key: 'payee_id'

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
