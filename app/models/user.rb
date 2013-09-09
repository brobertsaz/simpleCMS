class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  has_many :posts
  has_many :comments
end
