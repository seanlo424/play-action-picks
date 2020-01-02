class Pick < ApplicationRecord
	validates :user, :password
	
	belongs_to :user
	belongs_to :game
	belongs_to :team
	
end
