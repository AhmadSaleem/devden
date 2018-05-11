class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    if @message.save
      MessagesMailer.new_message(@message.id).deliver!
      redirect_to root_path, notice: "Thank you for contacting us."
    end
  end

  private

    def message_params
      params.require(:message).permit(:name, :email, :subject, :text)
    end
end
