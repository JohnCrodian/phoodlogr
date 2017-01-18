class ChangeValueOfRestaurantsColumnInUserTable < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :restaurants, :string
  end
end
