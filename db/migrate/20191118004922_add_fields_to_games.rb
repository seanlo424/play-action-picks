class AddFieldsToGames < ActiveRecord::Migration[5.2]
  def change
  	add_column :games, :teams, :string
  	add_column :games, :api_id, :integer
  	add_index :games, :api_id
  end
end
