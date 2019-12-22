class Team < ApplicationRecord
	has_many :home_games, class_name: "Team", foreign_key: "ht_id"
	has_many :away_games, class_name: "Team", foreign_key: "at_id"

	def games
		Game.where("ht_id = ? OR at_id = ?", id, id)
	end
end

