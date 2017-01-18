class RestaurantsController < ApplicationController
	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
		restaurant.save
		redirect to '/'
	end
end
