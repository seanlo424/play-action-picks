class PicksController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]


  def create
    @pick = Pick.new(pick_params)
    @pick.user = current_user
    @pick.save
  end

  def update
    @pick = Pick.find(params[:id])
    @pick.update(pick_params)
  end

  def index
    @games = Game.where(week: "9", season: "2019")
    #if @games.empty
      #@games = TheRundown.get_games("9", "2019")
    #end
    @picks = current_user.picks.where(game_id: @games.pluck(:id))
    @new_picks = []
    @games.each do |game|
      unless @picks.detect {|pick| pick.game_id == game.id} 
        @new_picks.push(Pick.new(user: current_user, game: game))
      end
    end
    @new_picks.concat(@picks)
  end

  def pick_params
    params.require(:pick).permit(:game_id, :team_id)
  end



end

 

