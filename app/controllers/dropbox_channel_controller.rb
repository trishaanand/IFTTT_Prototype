require 'dropbox_sdk'
Dropbox::API::Config.app_key    = 'vb3n6yjuyrsq5i6'
Dropbox::API::Config.app_secret = 'a2hkeg8biof2nsb'
# 'sandbox' mode because designated app-exclusive directory is fine for us
Dropbox::API::Config.mode       = "dropbox"
class DropboxChannelController < ApplicationController
	def index
		
		if request.params["challenge"] != nil
			puts "Inside challenge"
			challenge = request.params["challenge"]
	        challenge_response = challenge
	        render plain: challenge_response, status: 200
    	end
		# APP_KEY = 'vb3n6yjuyrsq5i6'
		# APP_SECRET = 'a2hkeg8biof2nsb'
		# flow = DropboxOAuth2FlowNoRedirect.new(Dropbox::API::Config.app_key, Dropbox::API::Config.app_secret)

		# authorize_url = flow.start()
		# puts authorize_url
		# code = gets.strip

		# access_token, user_id = flow.finish("A24SbXc0f5AAAAAAAAAAE_Tx2vH1HySjgna-ISfYKts")
		access_token = "A24SbXc0f5AAAAAAAAAAErMKdWUJGeFpSAmdY6fNbZ4SfuH6p_oDhwuxvXKdtiKf"
		client = DropboxClient.new(access_token)
		
		@channel = Channel.where(name: "Dropbox").first
		id = @channel.id
		path = nil
		ret_data = client.delta(@channel.data, path)
		
		# puts ret_data
		
		@entries = ret_data['entries']
		@listOfFiles = Array.new
		@entries.each do |entry|
			@filePath = entry[0]
			@fileMeta = entry[1]
			data = Array.new
			data = {'path' => @filePath, 'meta' =>@fileMeta}

			@listOfFiles.push(data)			
		end

		puts "************************************"
		puts @listOfFiles
		@channel['data'] = ret_data['cursor']
		@channel.save

		Tuple.where(channel_id: id).find_each  do |tuple|
			triggerVar = BaseTrigger.new
		  	msg = Array.new
		  	msg = {'tuple' => tuple, 'data' => @listOfFiles}
		  	puts "Going to execute"
		  	@output_view = triggerVar.exec(msg)
		end
	end

	def main
		# valid_dropbox_request?(message)

	end

	# def valid_dropbox_request?(message)
 #    digest = OpenSSL::Digest::SHA256.new
 #    signature = OpenSSL::HMAC.hexdigest(digest, 'a2hkeg8biof2nsb', message)
 #    request.headers['X-Dropbox-Signature'] == signature
	# end
end
