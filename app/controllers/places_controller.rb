class PlacesController < ApplicationController
  def index
    @places = Place.all 
  end 

  def show 
    @place = Place.find_by({"id" => params["id"]})
  end 

  def new 
  end 
  
  def create 
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to places_path, notice: "Congrats! Your newly visited place was successfully created."
  end 
end 