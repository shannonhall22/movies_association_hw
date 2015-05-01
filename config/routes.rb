Rails.application.routes.draw do

  # CREATE
  get "/directors/new", :controller => "directors", :action => "new", :as => "new_director"
  post "/directors", :controller => "directors", :action => "create", :as => "directors"

  # READ
  get "/directors/:id", :controller => "directors", :action => "show", :as => "director"
  get "/directors", :controller => "directors", :action => "index"

  # UPDATE
  get "/directors/:id/edit", :controller => "directors", :action => "edit", :as => "edit_director"
  patch "/directors/:id", :controller => "directors", :action => "update"

  # DESTROY
  delete "/directors/:id", :controller => "directors", :action => "destroy"

end
