class FriendsController < ApplicationController
  def index
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = current_user.friends.build(:other_user_id => params[:other_user_id])
    if @friend.save
      flash[:notice] = "Friend Added"
      redirect_to root_url
    else
      flash[:notice] = "Unable to add friend."
      redirect_to root_url
    end
  end
end
