ActionController::Routing::Routes.draw do |map|
  map.resources :foods

  map.resources :families, :collection => { :list => :get }, :member => { :toggle_misc_checkbox => :put }

  map.resources :groups

  map.root :controller => "main"
end
