class RandomNumberTrigger
	def check_trigger_condition(msg)
		#read from tuple for channel ID in a loop
		# tuple = Tuple.new
		# tuple = {'channel_id' => 1, 'trigger_id' => 1, 'action_id' => 1, 'triggerValue' => 0.5, 
		# 	'triggerCondition' => "<", 'action_data' => ""}
		puts "*******Trisha check_trigger_condition***********************************************************"
		puts msg
		@user = msg['tuple'].user
		@action = msg['tuple'].action
		@actionData = msg["tuple"]["actionData"]

		if msg["tuple"]["triggerCondition"] == "lt"
			if msg["data"]["rnd_nm"] < msg["tuple"]["triggerValue"].to_f
				puts "In lt *****"
				@output_view = "Yay! Win"
				flag = true
				
			else
				@output_view = "Woops"
				flag = false
			end
		elsif msg["tuple"]["triggerCondition"] == 'gt'
			puts "In gt ******"
			if msg["data"]["rnd_nm"] > msg["tuple"]["triggerValue"].to_f
				@output_view = "Yay! Win"
				flag = true
			else
				@output_view = "Woops"
				flag = false
			end
		elsif msg["tuple"]["triggerCondition"] == "eq"
			if msg["data"]["rnd_nm"] == msg["tuple"]["triggerValue"].to_f
				@output_view = "Yay! Win"
				flag = true
			else
				@output_view = "Woops"
				flag = false
			end
		else
			puts "Trigger condition not supported"
			@output_view = "Trigger condition not supported"
		end

		if flag = true
			if @action.name = "sendmail"
				UserMailer.send_trigger_email(@user, msg["data"]["rnd_nm"]).deliver
			elsif @action.name = "sendsms"
				@obj = SendText.new
				@obj.send_text_message(@user)
			end
			puts "Email sent"
		end
		puts @output_view
		return @output_view
	end
end