class UsersController < ApplicationController
  def index
    @users = User.order("created_at DESC")
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end
  
  def following
    @user = User.find(params[:id])
    @users = @user.friends
    render "index"
  end
  
  def followers
    @user = User.find(params[:id])
    @users = @user.inverse_friends
    render "index"
  end
end
