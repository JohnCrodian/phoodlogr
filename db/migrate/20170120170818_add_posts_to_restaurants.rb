class AddPostsToRestaurants < ActiveRecord::Migration[5.0]
  def change
  	add_column :restaurants, :posts, :text
  end
end
