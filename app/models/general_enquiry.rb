class GeneralEnquiry < ActiveRecord::Base
  validates :email, presence: true, email: true
  validates :message, presence: true
end
