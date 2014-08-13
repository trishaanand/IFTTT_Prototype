class SendText 
	def index
	end

	def send_text_message(user)

		number_to_send_to = user.phone

		twilio_sid = "ACa0aa192f836e4f09f7e10edcfabcab68"
		twilio_token = "083688ee23eb616be86c85632ece1adb"
		twilio_phone_number = "2692167547"
		puts "Inside send text message"
		@twilio_client = Twilio::REST::Client.new(twilio_sid, twilio_token) 
		puts "Inside send text message"
		@twilio_client.account.sms.messages.create(
			 	:from => "+1#{twilio_phone_number}",
				:to => number_to_send_to,
				:body => "Trigger generated from demo app"
			)
		puts "Inside send text message"
	end

end
