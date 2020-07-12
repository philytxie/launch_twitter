class TweetsController < ApplicationController
	
	before_action :authenticate_user!

	def new 
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.user = current_user
		if @tweet.save
			flash[:success] = "Woohoo! Your tweet is successfully published."
			redirect_to new_tweet_path
		else 
			p @tweet.errors.inspect
			render 'new'
			# once we're in here, there's a .errors
		end
	end

	def tweet_params
		params.require(:tweet).permit(:content)
	end
end
