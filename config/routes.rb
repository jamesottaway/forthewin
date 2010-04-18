ActionController::Routing::Routes.draw do |map|
  map.resources :apps do |app|
    app.resources :comments
    app.resources :votes
  end
  
  map.root :controller => 'apps'
end
