class Pick < ApplicationRecord
	validate :user

	belongs_to :user
	belongs_to :game
	belongs_to :team
	
end
