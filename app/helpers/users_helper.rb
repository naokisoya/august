module UsersHelper
  def link_to_follow_or_unfollow(user)
    if user_signed_in? && current_user != user
      if friendship = current_user.friendships.find_by_friend_id(user)
        link_to "unfollow", friendship, :method => :delete, :confirm => "Sure?"
      else
        link_to "follow", friendships_path(:friend_id => user), :method => :post
      end
    end
  end
  
  def link_to_following(user)
    count = user.friends.count
    link_to_if count > 0, count, following_path(user)
  end
  
  def link_to_followers(user)
    count = user.inverse_friends.count
    link_to_if count > 0, count, followers_path(user)
  end
end
