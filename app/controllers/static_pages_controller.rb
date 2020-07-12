class StaticPagesController < ApplicationController
	def main_page
		if user_signed_in?
			if current_user.profile
				redirect_to new_tweet_path
			else
				redirect_to new_profile_path
			end
		else
			@mission_statement = "This website was created on 7/11/2020 by Phil Xie during the 'Code Twitter in a Weekend' coding bootcamp provided by LaunchX. Welcome and feel free to click around!" 
		# `@` transfers the code to the main page
		# <% %> tells that it is ruby code
		end
	end
	


end
