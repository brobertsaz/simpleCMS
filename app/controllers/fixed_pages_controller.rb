class FixedPagesController < ApplicationController
  def home
    if signed_in?
      user = User.find(current_user.id)
      redirect_to user_pages_show_path(:user_id => current_user)
    end
  end

  def logout
  end

  def error
  end
end
