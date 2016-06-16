class SuppliesController < ApplicationController
  def index
    @title = "All Supplies:"
    if params[:camper_id]
      @camper = Camper.find(params[:camper_id])
      @supplies = @camper.supplies
    else
      @supplies = Supply.all
    end
  end

  def show
    @supplies = @camper.supplies
  end
end
