class SendTextController < ApplicationController
	def index
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = "AC93e8fb9dbb57b39a0d469996eecdbdbd"
    twilio_token = "685ff0e641be123cfe1b2135a8ab20d1"
    twilio_phone_number = "9259058081"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end
end
