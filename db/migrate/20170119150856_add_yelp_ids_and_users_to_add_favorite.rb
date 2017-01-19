class AddYelpIdsAndUsersToAddFavorite < ActiveRecord::Migration[5.0]
  def change
    add_column :add_favorites, :yelp_ids, :string
    add_column :add_favorites, :user_id, :integer
  end
end
