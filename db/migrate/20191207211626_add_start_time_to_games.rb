class AddStartTimeToGames < ActiveRecord::Migration[5.2]
  def change
  	add_column :games, :start_time, :datetime
  	add_column :games, :week, :string
  	add_column :games, :season, :string
  end
end
