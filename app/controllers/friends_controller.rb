class FriendsController < ApplicationController
  def index
  end

  def new
    @friend = Friend.new
  end

  def create
    # @friend = current_user.friends.build(:other_user_id => params[:other_user_id])
    @friend = Friend.new(post_params)
    puts @friend
    puts current_user.friends.build
    puts params[:other_user_id]
    puts current_user.friends
    if @friend.save
      flash[:notice] = "Friend Added"
      redirect_to posts_url
    else
      flash[:notice] = "Unable to add friend."
      redirect_to posts_url
    end
  end

  private

  def post_params
    params.require(:friend).permit(:user_id, :other_user_id)
  end
end
