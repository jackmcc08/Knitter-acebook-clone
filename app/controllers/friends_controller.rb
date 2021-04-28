class FriendsController < ApplicationController
  def index
  end

  def new
    @friend = Friend.new
  end

  def create
    # @friend = current_user.friends.build(:other_user_id => params[:other_user_id])
    @friend = Friend.new(:user_id => params[:user_id], :other_user_id => params[:other_user_id])
    puts 'NEW FRIEND'
    puts @friend
    puts 'NEW FRIEND2'
    puts params[:user_id]
    puts 'NEW FRIEND3'
    puts params[:other_user_id]
    puts 'NEW FRIEND4'
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

  # def post_params
  #   params.require(:friend).permit(:user_id, :other_user_id)
  # end
end
