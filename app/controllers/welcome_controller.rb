class WelcomeController < ApplicationController
  def welcome
    if current_user
      @user = current_user
      redirect_to user_path(@user)
    else
      @user = User.new
    end
  end
end
