class RandomNumberTrigger
	def check_trigger_condition(msg)
		#read from tuple for channel ID in a loop
		# tuple = Tuple.new
		# tuple = {'channel_id' => 1, 'trigger_id' => 1, 'action_id' => 1, 'triggerValue' => 0.5, 
		# 	'triggerCondition' => "<", 'action_data' => ""}
		puts "*******Trisha check_trigger_condition***********************************************************"
		@user = User.find(1)
		puts msg["tuple"]["triggerCondition"].to_s
		msg["tuple"]["triggerCondition"] = "gt"
		puts msg["tuple"]["actionData"].to_s

		if msg["tuple"]["triggerCondition"] == "lt"
			if msg["data"]["rnd_nm"] < msg["tuple"]["triggerValue"].to_f
				@output_view = "Yay! Win"
				UserMailer.send_trigger_email(@user, 1).deliver
				puts "Email sent"
			else
				@output_view = "Woops"
			end
		elsif msg["tuple"]["triggerCondition"] == 'gt'
			puts "HERE ****"
			if msg["data"]["rnd_nm"] > msg["tuple"]["triggerValue"].to_f
				@output_view = "Yay! Win"
				UserMailer.send_trigger_email(@user, 1).deliver
				puts "Email sent"
			else
				@output_view = "Woops"
			end
		elsif msg["tuple"]["triggerCondition"] == "et"
			if msg["data"]["rnd_nm"] == msg["tuple"]["triggerValue"].to_f
				@output_view = "Yay! Win"
				UserMailer.send_trigger_email(@user, 1).deliver
				puts "Email sent"
			else
				@output_view = "Woops"
			end
		else
			puts "Trigger condition not supported"
			@output_view = "Trigger condition not supported"
		end
		puts @output_view
		return @output_view
	end
end