# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#  user_id    :integer
#

class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  belongs_to :post
end
