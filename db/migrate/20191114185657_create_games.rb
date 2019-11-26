class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
    	t.integer :ht_id, index: true
    	t.integer :at_id, index: true
    	t.string :api_event_id, index: true
    	

      t.timestamps
    end
  end
end
