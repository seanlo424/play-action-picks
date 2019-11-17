class PicksController < ApplicationController
	before_action :authenticate_user!

  def create
  	@pick = Pick.create
  end

  def index
  end

  def update
  end
end
