class User < ApplicationRecord
  has_secure_password
  has_many :items

  validates :email, uniqueness: true, presence: true
end
