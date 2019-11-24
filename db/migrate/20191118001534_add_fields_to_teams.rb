class AddFieldsToTeams < ActiveRecord::Migration[5.2]
  def change
  	add_column :teams, :name, :string
  	add_column :teams, :api_id, :integer
  	add_index :teams, :api_id
  end
end
