class LocationsController < ApplicationController
  def index
    @countries=Country.all
  end
  def get_states
    @country=Country.find(params[:id])
    @states=@country.states.select("id,name")
    respond_to do |format|
      format.json { render :json => {:states=>@states ,"status"=>"success",:country=>@country} }
    end
  end
  def get_cities
    @state=State.find(params[:id])
    @cities=@state.cities.select("id,name")
    respond_to do |format|
      format.json { render :json => {:cities=>@cities ,"status"=>"success",:state=>@state } }
    end
  end
  def get_city
    @city=City.find(params[:id])
    respond_to do |format|
      format.json { render :json => {:city=>@city,"status"=>"success"} }
    end
  end
end