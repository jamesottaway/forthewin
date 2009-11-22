ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.resources :user_sessions
  
  map.root :controller => 'home'
end
