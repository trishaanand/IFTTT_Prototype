class MainController < ApplicationController
  def ifttt
  	random_number_generator
  	# if trigger
  	# 	action
  	# else
  	# 	@res = "Phoooo :|"
  	# end
  	triggerVar = BaseTrigger.new
  	msg = Array.new
  	data = Array.new
  	data = {'rnd_nm' => @num}
  	msg = {'channel_id' => 1, 'data' => data}
  	puts "Going to execute"
  	@output_view = triggerVar.exec(msg)
   end

  def random_number_generator
  	@num = rand(0.000...1.000)
  	return @num
  end

  def trigger
  	if 
  		@num > 0.5
  		return true
  	else
  		return false
  	end
  end

  def action
  	@res = "Tada!!!!!"
  end
end
