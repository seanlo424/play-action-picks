class PicksController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

  def create
  	#current_user.picks.create(pick_params)
  	#redirect_to root_path
  end

  def index
  	#@pick = Pick.all
  end

  def update
  end

  #def pick_params
  	#params.require(:pick).permit(:picks)
  #end

 # def pick
  #end
end
