class DropboxTrigger
	def check_trigger_condition(msg)
		@action = msg['tuple'].action
		@length = msg['data'].length
		if @length != 0
			@output_view = "Yay! Win"
			dataToMail = Array.new
			msg['data'].each do |data|
				temp = Array.new
				puts data
				if data['meta'] == nil
					var = "Deleted"
				else
					var = "Modified"
				end
				temp = {'path' => data['path'], 'status' => var}
				dataToMail.push(temp)
			end
			
			if @action.name == "sendmail"
				UserMailer.send_dropbox_email(msg['tuple'].user, dataToMail).deliver
			elsif @action.name == "sendsms"
			puts "********************************************************************"
			puts @action.name
				@obj = SendText.new	
				@obj.send_text_message(msg['tuple'].user)
			end
			puts "Email sent"
		else
			puts "Length zero"
		end

		return @output_view
	end
end