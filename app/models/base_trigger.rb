class BaseTrigger

	def exec(msg)
		if msg["tuple"]["channel_id"] == 1
			puts "Random Number trigger fired"
			randomTrigger = RandomNumberTrigger.new
			@output_view = randomTrigger.check_trigger_condition(msg)
		elsif msg["tuple"]["channel_id"] == 2
			puts "Dropbox trigger fired"
			dropboxTrigger = DropboxTrigger.new
			@output_view = dropboxTrigger.check_trigger_condition(msg)
		else
			#put trigger code for other channels
		end
		return @output_view
	end

end
