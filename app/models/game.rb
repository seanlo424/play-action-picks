class Game < ApplicationRecord
	has_many :picks
	belongs_to :home_team
	belongs_to :away_team
end
