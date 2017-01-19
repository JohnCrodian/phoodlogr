class Restaurant < ApplicationRecord

  # attr_accessor :yelp_id, :name, :description
  # def new
  # 	@restaurant = Restaurant.new
  # end

  # def create
  # 	@restaurant = Restaurant.new(restaurant_params)
  # end

  # def add_to_diary
  #    @restaurant = business.find(params[:product_id])
  #    @user = User.find(session[:user_id])
  #    ProductAdd.create(cart_id: @user.cart.id, product_id: @product.id)
  #    redirect_to products_path
  #  end

  belongs_to :user
  has_many :add_favorites
  has_many :users, through: :add_favorites
  
  #   def self.save_data_from_api

  #   response = Yelp.client.search.id("nooddi-thai-chef-glen-mills")
  #   restaurant_data = JSON.parse(response)
  #   restaurants = restaurant_data.map do |line|
  #     restaurant = Restaurant.new
  #     restaurant.yelp_id = line['id']
  #     restaurant.save
  #   end
  #   restaurants.select(&:persisted?)
  # end
end
