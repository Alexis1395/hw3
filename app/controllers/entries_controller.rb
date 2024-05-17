class EntriesController < ApplicationController
def show 
  @title = Entry.find_by({"place_id" => @place["id"]}) 
  @posted_on = Entry.find_by({"entry_id" => @entry["id"]}) 
  @description = Entry.find_by({"entry_id" => @entry["id"]}) 
end 

def new 
  @entry = Entry.new 
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry.save
  redirect_to "/places/#{@place["id"]}" 
end 
