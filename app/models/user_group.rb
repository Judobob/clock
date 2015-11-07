class UserGroup < ActiveRecord::Base
  has_many :user_group_linkings
  has_many :users, through: :user_group_linkings
end
