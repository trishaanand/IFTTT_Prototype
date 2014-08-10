class RandomNumberGenerator
	def main(channel)
  		Tuple.where(channel_id: channel).find_each do |tuple|
	  		@tuple = tuple
		    #data returned from the channel definition
		    data = Array.new
		    if (@tuple.channel_id == 1)
		      random_number_generator
		      data = {'rnd_nm' => @num}  
		    end
		  	
		  	triggerVar = BaseTrigger.new
		  	msg = Array.new
		  	msg = {'tuple' => @tuple, 'data' => data}
		  	puts "Going to execute"
		  	@output_view = triggerVar.exec(msg)
		end
	return @output_view
	end
	def random_number_generator
  		@num = rand(0.000...1.000)
  	return @num
  end
end