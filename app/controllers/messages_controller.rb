class MessagesController < ApplicationController
	def show
  end

  def edit
  	@user = current_user
  	@message = Message.find(params[:id])
  	@message.update_attributes(message_params)
  	respond_with @message
  end

  def new
    @user = current_user
    @message = Message.new
  end

  def create
    @user = current_user
    @message = @user.messages.build(message_params)
    if @message.save
      redirect_to user_messages_path(@user)
    end
  end

  def index
    @messages = current_user.messages
  end

  private
  def message_params
    params.require(:message).permit(:content, :receiver_number)
  end
end
