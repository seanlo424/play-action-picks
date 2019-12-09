class GroupPicksController < ApplicationController
  def show
  	@group_picks = Pick.all(params[:pick_id])
  end
end
