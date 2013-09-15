# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

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
