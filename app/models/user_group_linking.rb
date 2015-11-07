class UserGroupLinking < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_groups
end
