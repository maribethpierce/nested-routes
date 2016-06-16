class CampersController < ApplicationController

  def index
    @title = "All Campers:"
    if params[:campsite_id]
      @campsite = Campsite.find(params[:campsite_id])
      @campers = @campsite.campers
    else
      @campers = Camper.all
    end
  end

  def show
    @camper = Camper.find(params[:id])
    @supplies = @camper.supplies
    @campsite = @camper.campsite
  end
end
