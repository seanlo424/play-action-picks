class Pick < ApplicationRecord
	validate :user
	validate :game

	belongs_to :user
	belongs_to :game
	belongs_to :team
	
end
