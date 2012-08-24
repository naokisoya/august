class PagesController < ApplicationController
  def home
    if user_signed_in?
      #@tweets = current_user.tweets
      @tweets = Tweet.where("user_id = ? OR user_id IN (?)", current_user, current_tuser.friend_ids)
      @title = "Timeline"
      @tweet = Tweet.new
    else
      @tweets = Tweet.all
      @title = "Welcome august!"
    end
  end

  def about
  end

  def help
  end
end
