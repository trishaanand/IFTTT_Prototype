class BaseTrigger

	def exec(msg)
		if msg["tuple"]["channel_id"] == 1
			puts "Channel ID"
			randomTrigger = RandomNumberTrigger.new
			@output_view = randomTrigger.check_trigger_condition(msg)
		else
			#put trigger code for other channels
		end
		return @output_view
	end

end
