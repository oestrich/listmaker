Listmaker::Application.routes.draw do
  resources :troop_types

  resources :troops do
    resources :options
  end

  match '/backbone' => 'home#backbone'

  root :to => 'home#index'
end
