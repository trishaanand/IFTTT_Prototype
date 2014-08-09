class BaseTrigger

	def exec(msg)
		puts "In the BaseTrigger"
		if msg['channel_id'] === 1
			puts "Channel ID"
			randomTrigger = RandomNumberTrigger.new
			@output_view = randomTrigger.check_trigger_condition(msg)
		else
			puts "*******Trisha***********************"
		end
		return @output_view
	end

end
