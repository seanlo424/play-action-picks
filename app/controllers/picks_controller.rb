class PicksController < ApplicationController
  def create
  end

  def index
  	@picks = Pick.all
  end

  def update
  end
end
