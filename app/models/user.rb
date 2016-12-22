class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  has_secure_password
  has_many :petitions, dependent: :destroy
end
