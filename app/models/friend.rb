class Friend < ApplicationRecord
  # belongs_to :user
  # # belongs_to :new_friend, :class_name => 'User'

  belongs_to :user, :foreign_key => "user_id", :class_name => "User"
  belongs_to :other_user, :foreign_key => "other_user_id", :class_name => "User"

  # belongs_to :payer, class_name: 'User'
  # belongs_to :payee, class_name: 'User'
end
