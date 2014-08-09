class TriggerController < ApplicationController
	def test
		arr = Array.new
		arr = {'channel_id' => 1,
			 '' => ''}
		@var = BaseTrigger.new
		@var.exec
	end
end
