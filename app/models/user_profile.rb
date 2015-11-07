class UserProfile < ActiveRecord::Base
  belongs_to :user
  has_many :user_enquiries
  accepts_nested_attributes_for :user_enquiries, allow_destroy: true
end
