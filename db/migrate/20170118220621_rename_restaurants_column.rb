class RenameRestaurantsColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :restaurants, :yelp_ids
  end
end
