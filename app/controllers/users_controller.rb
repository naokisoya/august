class UsersController < ApplicationController
  def index
    @users = User.order("created_at DESC")
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end

  def show
  end
end
