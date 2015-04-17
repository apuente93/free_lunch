class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, length: { maximum: 30 },
                    uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { maximum: 42 }, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :zip_code, presence: true, length: { is: 5 }
  has_secure_password
  validates :password, length: { minimum: 6 }
end
