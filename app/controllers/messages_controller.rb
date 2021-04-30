class MessagesController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def create
    @message = Message.create(message_params)
    render root_url
  end

  def index
    messages = []
    Message.all.each { |message| messages.push({
      id: message.id, 
      content: message.content, 
      created_at: message.created_at, 
      user_id: message.user_id, 
      username: message.user.username,
      current_user_id: current_user.id
      }) }
    render json: messages
  end

  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end
