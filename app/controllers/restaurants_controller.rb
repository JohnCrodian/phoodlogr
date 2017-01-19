class RestaurantsController < ApplicationController
	
	def new
		@restaurant = Restaurant.new(restaurant_params)
	end

	def create
		@user = current_user
		@restaurant = Restaurant.new(restaurant_params)
		@restaurant.yelp_id = params[:restaurant][:yelp_id]
		@restaurant.name = params[:restaurant][:name]
		@restaurant.user_id = @user.id
		@restaurant.save
		AddFavorite.create(user_id: @user.id, restaurant_id: @restaurant.id)
		redirect_to '/'
	end


private

def restaurant_params
    params.require(:restaurant).permit(:yelp_id, :name, :user_id)
end
end

