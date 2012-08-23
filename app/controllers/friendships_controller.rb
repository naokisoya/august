class FriendshipsController < ApplicationController
before_filter :authenticate_user!, :only => [create, :destroy]
def create
  @friendship = current_user.friendships.build(:friend_id => params[:frined_id])
  if @friendship.save
    redirect_to @friendship.friend, :notice => "Add Friend"
  else
    redirect_to @friendship.friend, :error => "Not Add Friend"
  end
end

def destory
  @friendship = current_user.friendships.find(params[:id])
  @friendship.destroy
  redirect_to @friendship.friend, :notice => "Remove Friend"
end
end
