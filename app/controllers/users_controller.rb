class UsersController < ApplicationController
  before_action :authenticate_user!
  
  
  def account
    @user= current_user
  end

  def profile
    @user= current_user
  end

  def update
    @user = current_user
    if @user.update(params.require(:user).permit(:name,:introduction,:image))
      flash[:notice] = "ユーザープロフィールの情報を更新しました"
      redirect_to profile_path
    else
      render "profile"
    end  
  end
  
  def logout
    session[:user_id] = nil
    redirect_to root_path
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
  end
  
  
end