class Restaurant < ApplicationRecord
	def new
		@restaurant = Restaurant.new
	end

	def create
	end

	def add_to_diary
    @restaurant = business.find(params[:product_id])
    @user = User.find(session[:user_id])
    ProductAdd.create(cart_id: @user.cart.id, product_id: @product.id)
    redirect_to products_path
  end
end
