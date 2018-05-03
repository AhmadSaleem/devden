class MessagesMailer < ApplicationMailer

  def new_message(message_id)
    @message = Message.find(message_id)
    mail(to: "ahmad123@gmail.com", subject: "You got new message.")
  end
end
