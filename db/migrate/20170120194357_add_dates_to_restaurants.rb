class AddDatesToRestaurants < ActiveRecord::Migration[5.0]
  def change
  	add_column :restaurants, :date_visited, :date
  end
end
