class Message < ActiveRecord::Base
  has_one :public_private
  accepts_nested_attributes_for :public_private, allow_destroy: true
end
