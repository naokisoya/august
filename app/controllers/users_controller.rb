class UsersController < ApplicationController
  def index
    @users = User.order("created_at DESC")
    @user = User.find(params[:id])
  end

  def show
  end
end
