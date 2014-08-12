class SendCallController < ApplicationController

	def index
	end

	def makecall

		number_to_send_to = "+918470018503"

		# twilio_sid = "ACa0aa192f836e4f09f7e10edcfabcab68"
		# twilio_token = "083688ee23eb616be86c85632ece1adb"
		twilio_phone_number = "2692167547"

		account_sid = "	ACa0aa192f836e4f09f7e10edcfabcab68"
		account_token = "083688ee23eb616be86c85632ece1adb"

		data = {
			:from => twilio_phone_number,
			:to =>  "+918470018503",
			:url => "http://4b87e774.ngrok.com" + 'sendcall/voice'}

		# begin
			client = Twilio::REST::Client.new(account_sid,account_token)
			client.account.calls.create data
			puts "TADA*************************************************************"

		# redirect_to :action => 'voice'
		# rescue StandardError => bang
						
		# end

		# @response = {'Say' => "Thanks for registering with the prototype app.
		#  This is to inform you that trigger was generated"}
		# @obj = {'Response' => @response }
		

		# respond_to do |f|
		# 	f.html
		# 	f.xml {render :xml => @obj.to_xml}
		# end
	end

	def voice
		# response = Twilio::TwiML::Response.new do |r|
		# 	r.Say 'Hello there!', :voice => 'alice'
		# 	r.Dial :callerId => '+918470018503' do |d|
		# 		d.Client 'jenny'
		# 	end
		# end

		render :action => 'voice.xml.builder', :layout => false
		# render_twiml response
	end
end