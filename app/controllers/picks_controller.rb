class PicksController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

  def list
    @picks = Pick.all
  end

  def new
  	@picks = Pick.new(params[:pick])
    @games = Game.where(week: "14", season: "2019")
    @picks = current_user.picks.where(game_id: @games.pluck(:id))
    @new_picks = []
    @games.each do |game|
      unless @picks.detect {|pick| pick.game_id == game.id} 
        @new_picks.push(Pick.new(user: current_user, game: game))
      end
    @new_picks.concat(@picks)
  end

  def create
    @picks = Pick.new(params[:pick])

    if @picks.save
      redirect_to @picks
    else
      @subjects = Subject.all
      render :new 
    end
  end

  def pick_params
    params.require(:picks)
  end

  def index
    @games = Game.where(week: "14", season: "2019")
    @picks = current_user.picks.where(game_id: @games.pluck(:id))
    @new_picks = []
    @games.each do |game|
      unless @picks.detect {|pick| pick.game_id == game.id} 
        @new_picks.push(Pick.new(user: current_user, game: game))
      end
    end
    @new_picks.concat(@picks)
  end

  def update

  end

 def show
  @pick = Pick.find(params[:pick_id])
 end

 

end
end

 

