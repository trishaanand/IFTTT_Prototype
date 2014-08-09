class RandomNumberTrigger
	def check_trigger_condition(msg)
		#read from tuple for channel ID in a loop
		tuple = Tuple.new
		tuple = {'channel_id' => 1, 'trigger_id' => 1, 'action_id' => 1, 'triggerValue' => 0.5, 
			'triggerCondition' => "<", 'action_data' => ""}
		puts "*******************************************************************"
		# begin
			if msg['data']['rnd_nm'].send(tuple['triggerCondition'],tuple['triggerValue'])
				@output_view = "Yay! Win"
			else
				@output_view = "Woops"
			end
		# end while 0
		puts @output_view
		return @output_view
	end
end