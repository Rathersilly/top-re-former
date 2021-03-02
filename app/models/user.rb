class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 20 }
  validates :username, presence: true, length: { maximum: 20 }
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false }#, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  has_secure_password

end
