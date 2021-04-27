class Friend < ApplicationRecord
  belongs_to :user
  belongs_to :new_friend, :class_name => 'User'
end
