class User < ActiveRecord::Base
  #User Validations
  validates :first_name, :last_name, :presence => {:message => "Must have First Name"}
  validates :email, presence: {:message => "Must have Last Name"}
  validates :password, presence: {:message => "Must have password"}
  validates :height, presence: {:message => "Must have height"}
  validates :weight, presence: {:message => "Must have weight"}
  validates :email, :uniqueness => { :case_sensitive => false, :message => "Email already in use"}
  # --- End User Validations ---

  has_many :meals
  has_many :recipes, :through => :meals



  has_secure_password




end
