class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to user_path(@user), :notice => "signed up!"
    else
     # render new
      flash[:error] = "User save failed"
      redirect_to :back
    end
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(:password, :email, :password_confirmation)
  end
end
