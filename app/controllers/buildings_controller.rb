class BuildingsController < ApplicationController

  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.create(building_params)
  end

  def show
    @building = Building.find(params[:id])
    @companies = @building.companies
  end

  private

  def building_params
    params.require(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floors)
  end

end
