class LocationsController < ApplicationController
  def index
    @countries=Country.all
  end
  def get_location
    if params[:type]=="Country"
      @selected=Country.find(params[:id])
      @loc=@selected.states.select("id,name")
      @ct=@selected.currency_type
      @tz=@selected.time_zone
      @selected=[:country=>@selected,:currency=>@ct,:timezone=>@tz]
    elsif params[:type]=="State"
      @selected=State.find(params[:id])
      @loc=@selected.cities.select("id,name")
    elsif params[:type]=="City"
      @selected=City.find(params[:id])
      @loc=nil
    end
    respond_to do |format|
      format.json { render :json => {:places=>@loc,"status"=>"success",:selected=>@selected} }
    end
  end
end