class UpdateYelpIdInAddFavorite < ActiveRecord::Migration[5.0]
  def change
  	remove_column :add_favorites, :yelp_ids
  end
end
