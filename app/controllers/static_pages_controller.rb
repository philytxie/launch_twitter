class StaticPagesController < ApplicationController
	def main_page
		@mission_statement = "This website was created on 7/11/2020 by Phil Xie during the 'Code Twitter in a Weekend' coding bootcamp provided by LaunchX. Welcome and feel free to click around!" 
		# `@` transfers the code to the main page
		# <% %> tells that it is ruby code
	end


end
