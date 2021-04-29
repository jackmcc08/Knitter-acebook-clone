class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    @message = Message.new
  end

  def create
    P "-----------------------"
    puts params
    P "-----------------------"
    @message = Message.create({content: params[:content], user_id: current_user.id})
    redirect_to root_url
  end

  def index
    messages = []
    Message.all.each { |message| messages.push({id: message.id, content: message.content, created_at: message.created_at, user_id: message.user_id, username: message.user.username}) }
    render json: messages
  end

  # def message_params
  #   params.require(:message).permit(:content, :user_id)
  # end
end
