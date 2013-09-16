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
  attr_accessible :content, :title, :user_id
  belongs_to :user
  has_many :comments

  # returns the first up to MAX character of a post.
  def content_summary(max)
    if self.content.length >= max
      self.content.slice(0..max) + "..."
    else
      self.content
    end
  end
end
