Listmaker::Application.routes.draw do
  resources :troop_types
  resources :troops

  root :to => 'home#index'
end
