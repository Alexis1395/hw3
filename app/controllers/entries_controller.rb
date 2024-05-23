class EntriesController < ApplicationController

  def new
    @place = Place.find_by({ "id" => params["id"] })
  end

  def create 
    @entry = Entry.new 
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["place_id"] = params["id"]
    @entry.save
    redirect_to "/places/#{@place["id"]}"
  end 

end 
