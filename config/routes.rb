Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  
  get("/directors", {:controller => "directors", :action => "index"})
  get("directors/:the_id", {:controller => "directors", :action => "show"})
  
  
  get("/movies", {:controller => "movies", :action => "index"})
  get("movies/:the_id", {:controller => "movies", :action => "show"})
  
  get("/actors", {:controller => "misc", :action => "allactors"})
  get("/directors/youngest", {:controller => "misc", :action => "youngest"})
  get("/directors/eldest", {:controller => "misc", :action => "eldest"})
  
  
end
