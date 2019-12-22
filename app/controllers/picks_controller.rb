class PicksController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

  def create
    @picks = Pick.new(params[:pick])

    if @picks.save
      redirect_to :action => 'list'
    else
      @subjects = Subject.all
      render :action => 'new' 
    end
  end

  def update
    @picks = Pick.find(params[:pick_id])

    if @picks.update_attributes(pick_param)
      redirect_to :action => 'show', :id => @picks
    else
      @subjects = Subject.all
      render :action => 'edit'
    end

  end

  def index
    @games = Game.where(week: "9", season: "2019")
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
    params.require(:picks)
  end


end

 

