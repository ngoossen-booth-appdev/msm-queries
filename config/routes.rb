Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors", {:controller => "director", :action => "home"})
  get("/directors/eldest", {:controller => "director", :action => "eldest"})
  get("/directors/youngest", {:controller => "director", :action => "youngest"})
  get("/directors/:director_id", {:controller => "director", :action => "details"})
  
  
  get("/actors", {:controller => "actor", :action => "home"})
  get("/actors/:actor_id", {:controller => "actor", :action => "details"})

  get("/characters", {:controller => "character", :action => "home"})
  get("/characters/:character_id", {:controller => "character", :action => "details"})
  
  get("/movies", {:controller => "movie", :action => "home"})
  get("/movies/:movie_id", {:controller => "movie", :action => "details"})
end
