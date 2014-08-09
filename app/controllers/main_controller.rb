class MainController < ApplicationController
  def ifttt
  	@tuple = Tuple.find(params[:id])

    #data returned from the channel definition
    data = Array.new
    if (@tuple.channel_id == 1)
      random_number_generator
      data = {'rnd_nm' => @num}  
    else
      #do nothing right now
    end
  	
  	triggerVar = BaseTrigger.new
  	msg = Array.new
  	msg = {'tuple' => @tuple, 'data' => data}
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

  def mail
    arr = Array.new
    arr = {wow: "WOW"}
    puts arr[:wow]
    # UserMailer.welcome_email(1).deliver
  end
end
