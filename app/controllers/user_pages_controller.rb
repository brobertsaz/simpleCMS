class UserPagesController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @recent_posts = Post.find(:all, :conditions => [ "user_id = ?", params[:user_id]], :order => "created_at DESC", :limit => 4)
    @older_posts = Post.find(:all, :conditions => [ "user_id = ?", params[:user_id]], :order => "created_at DESC", :offset => 4, :limit => 5)
    @posts_length = Post.find(:all, :conditions => [ "user_id = ?", params[:user_id]]).length
  end
end
