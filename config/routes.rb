Listmaker::Application.routes.draw do
  resources :troop_types

  root :to => 'home#index'
end
