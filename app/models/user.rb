class User < ApplicationRecord

  has_secure_password

  has_many :submisions
  has_many :comments
  
end
