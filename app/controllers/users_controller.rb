class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to home_index_path, :notice => "signed up!"
    else
      render new
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :email, :password_confirmation)
  end
end