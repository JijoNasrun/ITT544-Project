class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.new
    user.user_name = "#{user_params[:name]}"
    user.password = "#{user_params[:password]}"
    user.user_address = "#{user_params[:address]}"
    user.user_contact ="#{user_params[:phone]}"
    user.user_level = "#{user_params[:level]}"
    user.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :address, :phone, :level)
  end
end
