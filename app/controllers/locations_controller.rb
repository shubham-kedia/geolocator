class LocationsController < ApplicationController
  def index
    @countries=Country.all
  end
  def get_location
    if params[:type]=="Country"
      @loc=Country.find(params[:id]).states.select("id,name")
    elsif params[:type]=="State"
      @loc=State.find(params[:id]).cities.select("id,name")
    elsif params[:type]=="City"
      @loc=City.find(params[:id])
    end
    respond_to do |format|
      format.json { render :json => {:places=>@loc,"status"=>"success"} }
    end
  end
end