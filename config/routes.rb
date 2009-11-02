ActionController::Routing::Routes.draw do |map|
  map.resources :foods

  map.resources :families

  map.resources :groups

  map.root :controller => "main"
end
