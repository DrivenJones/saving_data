class TweetsController < ApplicationController
	
	def new
		@tweet = Tweet.new
	end

	def create
		#when we used params[:tweet], it was equivalent to @tweet = Tweet.new(content: 'whatever your tweet is')
		
		@tweet = Tweet.new(tweet_params)
		@tweet.save
		redirect_to new_tweet_path
	end


	def tweet_params
		params.require(:tweet).permit(:content)
	end
end
