Rails.application.routes.draw do
  # Routes for the Recommend resource:
  # CREATE
  get "/recommends/new", :controller => "recommends", :action => "new"
  post "/create_recommend", :controller => "recommends", :action => "create"

  # READ
  get "/recommends", :controller => "recommends", :action => "index"
  get "/recommends/:id", :controller => "recommends", :action => "show"

  # UPDATE
  get "/recommends/:id/edit", :controller => "recommends", :action => "edit"
  post "/update_recommend/:id", :controller => "recommends", :action => "update"

  # DELETE
  get "/delete_recommend/:id", :controller => "recommends", :action => "destroy"
  #------------------------------

  # Routes for the Friend resource:
  # CREATE
  get "/friends/new", :controller => "friends", :action => "new"
  post "/create_friend", :controller => "friends", :action => "create"

  # READ
  get "/friends", :controller => "friends", :action => "index"
  get "/friends/:id", :controller => "friends", :action => "show"

  # UPDATE
  get "/friends/:id/edit", :controller => "friends", :action => "edit"
  post "/update_friend/:id", :controller => "friends", :action => "update"

  # DELETE
  get "/delete_friend/:id", :controller => "friends", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
