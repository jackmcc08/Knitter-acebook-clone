class FriendsController < ApplicationController
  def index
  end

  def new
    @friend = Friend.new
  end

  def create
    if already_friends?
      flash[:notice] = "Unable to add friend."
      redirect_to posts_url
    else
      @friend = Friend.create(:user_id => params[:user_id], :other_user_id => params[:other_user_id])
      flash[:notice] = "Friend Added"
      redirect_to posts_url
    end
  end

  private

  def already_friends?
    Friend.where(user_id: current_user.id, other_user_id: params[:other_user_id]).exists?
  end
end
