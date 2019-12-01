class CreatePicks < ActiveRecord::Migration[5.2]
  def change
    create_table :picks do |t|
    	t.integer :team_id, index: true
    	t.integer :game_id, index: true
    	t.integer :user_id, index: true
    	

      t.timestamps
    end
  end
end
#add_column :teams, :api_id, :integer
  	#add_index :teams, :api_id