class DropboxTrigger
	def check_trigger_condition(msg)
		@user = User.find(1)
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
			UserMailer.send_dropbox_email(@user, dataToMail).deliver
			puts "Email sent"
		else
			puts "Length zero"
		end

		return @output_view
	end
end