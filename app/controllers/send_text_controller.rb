class SendTextController < ApplicationController
	def index
	end

	def send_text_message

		number_to_send_to = "+918470018503"

		twilio_sid = "ACa0aa192f836e4f09f7e10edcfabcab68"
		twilio_token = "083688ee23eb616be86c85632ece1adb"
		twilio_phone_number = "2692167547"

		@twilio_client = Twilio::REST::Client.new(twilio_sid, twilio_token) 

		#The below code works. Uncomment when required.
		# @twilio_client.account.sms.messages.create(
		# 	 	:from => "+1#{twilio_phone_number}",
		# 		:to => number_to_send_to,
		# 		:body => "This is a message. It gets sent to #{number_to_send_to}"
		# 	)
	end

end
