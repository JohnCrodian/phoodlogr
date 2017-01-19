class AddYelpIdToRestaurants < ActiveRecord::Migration[5.0]
  def change
  	add_column :restaurants, :yelp_id, :integer
  end
end
