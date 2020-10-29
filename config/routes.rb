Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors", {:controller => "director", :action => "index"})
  #get("/directors/:director_id", {:controller => "director", :action => "details"})
  get("/directors/eldest", {:controller => "director", :action => "eldest"})
  get("/directors/youngest", {:controller => "director", :action => "youngest"})
  
  
  
  get("/actors", {:controller => "actor", :action => "index"})
  get("/characters", {:controller => "character", :action => "index"})
  get("/movies", {:controller => "movie", :action => "index"})
end
