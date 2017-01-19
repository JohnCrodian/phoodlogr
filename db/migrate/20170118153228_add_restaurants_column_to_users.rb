class AddRestaurantsColumnToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :restaurants, :integer
  end
end
