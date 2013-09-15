# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  title      :string(255)
#

class Post < ActiveRecord::Base
  attr_accessible :content, :title
  belongs_to :user
  has_many :comments
end
