class AddPostIdAndUserIdToComments < ActiveRecord::Migration
  def up
    add_column :comments, :post_id, :integer
    add_column :comments, :user_id, :integer
  end

  def down
    remove_column :comments, :post_id
    remove_column :comments, :user_id
  end
end
