Rails.application.routes.draw do
  root :to => "friends#index"
  # Routes for the Recommend_rating resource:
  # CREATE
  get "/recommend_ratings/new", :controller => "recommend_ratings", :action => "new"
  post "/create_recommend_rating", :controller => "recommend_ratings", :action => "create"

  # READ
  get "/recommend_ratings", :controller => "recommend_ratings", :action => "index"
  get "/recommend_ratings/:id", :controller => "recommend_ratings", :action => "show"

  # UPDATE
  get "/recommend_ratings/:id/edit", :controller => "recommend_ratings", :action => "edit"
  post "/update_recommend_rating/:id", :controller => "recommend_ratings", :action => "update"

  # DELETE
  get "/delete_recommend_rating/:id", :controller => "recommend_ratings", :action => "destroy"
  #------------------------------

  # Routes for the Rating resource:
  # CREATE
  get "/ratings/new", :controller => "ratings", :action => "new"
  post "/create_rating", :controller => "ratings", :action => "create"

  # READ
  get "/ratings", :controller => "ratings", :action => "index"
  get "/ratings/:id", :controller => "ratings", :action => "show"

  # UPDATE
  get "/ratings/:id/edit", :controller => "ratings", :action => "edit"
  post "/update_rating/:id", :controller => "ratings", :action => "update"

  # DELETE
  get "/delete_rating/:id", :controller => "ratings", :action => "destroy"
  #------------------------------

  # Routes for the Entertainment resource:
  # CREATE
  get "/entertainments/new", :controller => "entertainments", :action => "new"
  post "/create_entertainment", :controller => "entertainments", :action => "create"

  # READ
  get "/entertainments", :controller => "entertainments", :action => "index"
  get "/entertainments/:id", :controller => "entertainments", :action => "show"

  # UPDATE
  get "/entertainments/:id/edit", :controller => "entertainments", :action => "edit"
  post "/update_entertainment/:id", :controller => "entertainments", :action => "update"

  # DELETE
  get "/delete_entertainment/:id", :controller => "entertainments", :action => "destroy"
  #------------------------------

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
