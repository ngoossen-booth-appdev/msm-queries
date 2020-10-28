Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", {:controller => "director", :action => "index"})
  get("/actors", {:controller => "actor", :action => "index"})
  get("/characters", {:controller => "character", :action => "index"})
  get("/movies", {:controller => "movie", :action => "index"})
end
