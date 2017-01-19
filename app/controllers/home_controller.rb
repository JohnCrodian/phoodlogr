class HomeController < ApplicationController

	def show
		userzip = current_user.zipcode
		parameters = { term: params[:search], limit: 20}
		@response = Yelp.client.search(userzip, parameters)
		@restaurant = Restaurant.new
			
	end

	def index
	end
end
