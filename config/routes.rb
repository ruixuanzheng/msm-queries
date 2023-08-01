Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", {:controller => "misc", :action => "alldirectors"})
  get("/movies", {:controller => "misc", :action => "allmovies"})
  get("/actors", {:controller => "misc", :action => "allactors"})
  get("/directors/youngest", {:controller => "misc", :action => "youngest"})
  get("/directors/eldest", {:controller => "misc", :action => "eldest"})
  get("directors/:the_id", {:controller => "misc", :action => "show"})
end
