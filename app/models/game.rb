class Game < ApplicationRecord
	has_many :picks
	has_many :teams
end
