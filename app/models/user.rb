class User < ApplicationRecord
  has_secure_password

  has_one :session, dependent: :destroy

  validates :name, :email, presence: true
  validates :password, length: { minimum: 6 }, if: :password
  validates :email, uniqueness: true
  validates :email, email_format: true
end
