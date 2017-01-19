class ChangeValueOfYelpIdColumnToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :restaurants, :yelp_id, :string
  end
end
