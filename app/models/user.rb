class User < ApplicationRecord
  has_many :posts

  has_many(
    :a_friends,
    class_name: "Friend",
    foreign_key: :user_id,
    primary_key: :id
  )
  has_many(
    :b_friends,
    class_name: "Friend",
    foreign_key: :other_user_id,
    primary_key: :id
  )

  has_many :friend_as, through: :b_friends, source: :friend_a
  has_many :friend_bs, through: :a_friends, source: :friend_b

  def friends
    friend_as + friend_bs
  end

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
