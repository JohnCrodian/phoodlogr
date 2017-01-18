class RestaurantsController < ApplicationController
	def new
		@restaurant = Restaurant.new(restaurant_params)
	end

	def create
		@user = current_user
		@restaurant = Restaurant.new(restaurant_params)
		@restaurant.user_id = @user.id
		@restaurant.save
		redirect_to '/'
	end
end

def restaurant_params
    params.permit(:yelp_id, :name, :description)
  end
