class HomeController < ApplicationController

def show
	parameters = {term: params[:search], limit: 20}
	@response = Yelp.client.search('New York', parameters)
	userzip = current_user.zipcode
	parameters = { term: params[:search], limit: 20}
	@response = Yelp.client.search(userzip, parameters)
	@restaurant = Restaurant.new
	@fulldiary = current_user.restaurants
	end

	def index
	end
end
