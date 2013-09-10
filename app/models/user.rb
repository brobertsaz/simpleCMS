class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  has_secure_password
  before_save { |user| user.email = email.downcase }
  validates_confirmation_of :password
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :posts
  has_many :comments
end
