class AddRestaurantIdToAddFavorite < ActiveRecord::Migration[5.0]
  def change
  	add_column :add_favorites, :restaurant_id, :integer
  end
end
