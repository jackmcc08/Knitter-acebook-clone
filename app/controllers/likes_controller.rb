class LikesController < ApplicationController
  before_action :find_post
  before_action :find_like

  def create
    if already_liked?
      @like.destroy
    else
      @post.likes.create(user_id: current_user.id)
    end
    redirect_to root_url
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end

  def find_like
    @like = @post.likes.find_by(user_id: current_user.id, post_id: params[:post_id])
 end

  def already_liked?
    Like.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end
end
