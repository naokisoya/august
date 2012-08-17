class PagesController < ApplicationController
  def home
    if user_signed_in?
      @tweets = current_user.tweets
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
