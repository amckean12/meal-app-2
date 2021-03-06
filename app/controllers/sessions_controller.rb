class SessionsController < ApplicationController
   def create
    @user = User.find_by_email(params[:session][:email])
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        redirect_to root_path
      end
  end

  def destroy
    if current_user
      session.delete :user_id
    end
    redirect_to '/'
  end
end
