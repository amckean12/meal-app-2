class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def show
   @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :email, :height, :weight)
  end

end
