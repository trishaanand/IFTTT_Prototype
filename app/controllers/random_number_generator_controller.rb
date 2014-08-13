class RandomNumberGeneratorController < ApplicationController
	skip_before_filter :authenticate_user!
	def generate
  	# @num = rand(0.000...1.000)
  	@var = RandomNumberGenerator.new
  	@returnVar = @var.main(1)
  end
end
