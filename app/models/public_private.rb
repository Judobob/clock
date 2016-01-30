class PublicPrivate < ActiveRecord::Base
  belongs_to :message
  require 'openssl'
  after_initialize do |public_private|
    key = OpenSSL::PKey::RSA.new 2048
    write_attribute(:private_key, key.to_pem)
    write_attribute(:public_key,key.public_key.to_pem) 
    
  end
end
