class Game < ApplicationRecord
	has_many :picks
	belongs_to :home_team, class_name: "Team", foreign_key: "ht_id"
	belongs_to :away_team, class_name: "Team", foreign_key: "at_id"

	def teams
		Team.where("id = ? OR id = ?", ht_id, at_id)
	end
end
