class AddWeekToPicks < ActiveRecord::Migration[5.2]
  def change
  	add_column :picks, :week, :integer
  end
end
