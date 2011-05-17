Listmaker::Application.routes.draw do
  resources :troop_types

  resources :troops do
    resources :options
  end

  root :to => 'home#index'
end
