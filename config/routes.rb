ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.resources :user_sessions
  map.resources :apps do |app|
    app.resources :comments
    app.resources :votes
  end
  
  map.root :controller => 'apps'
end
