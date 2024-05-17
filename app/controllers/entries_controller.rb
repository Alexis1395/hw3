class EntriesController < ApplicationController

def new 
  @entry = Entry.new 
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @place = Place.find(@place["id"])
  @entry.save
  redirect_to "/places/#{@place["id"]}" 
end 
