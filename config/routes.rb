ActionController::Routing::Routes.draw do |map|
  map.resources :foods

  map.resources :families, :collection => { :list => :get }

  map.resources :groups

  map.root :controller => "main"
end
