class TweetsController < ApplicationController
	
	def new
		@tweet = Tweet.new
	end

	def create
		#when we used params[:tweet], it was equivalent to @tweet = Tweet.new(content: 'whatever your tweet is')
		
		@tweet = Tweet.new(tweet_params)
		puts "AN ERROR MESSAGE: #{@tweet.inspect}" #puts outputs your message to the server logs (in terminal)
	end


	def tweet_params
		params.require(:tweet).permit(:content)
	end
end
