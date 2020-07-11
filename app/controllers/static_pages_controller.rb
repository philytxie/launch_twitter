class StaticPagesController < ApplicationController
	def main_page
		@mission_statement = "save the world" 
		# `@` transfers the code to the main page
		# <% %> tells that it is ruby code
	end


end
