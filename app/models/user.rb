class User < ApplicationRecord
  #User Validations
  validates :first_name, :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :email, :uniqueness => { :case_sensitive => false }

  has_secure_password
end
