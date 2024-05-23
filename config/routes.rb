Rails.application.routes.draw do
  get 'places/index'
  get 'places/show'
  get 'places/new'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources "places"
  resources "entries"

  # Defines the root path route ("/")
  get("/", { :controller => "places", :action => "index" })
  
end
