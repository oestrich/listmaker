Listmaker::Application.routes.draw do
  match "/troop_types/update_positions" => "troop_types#update_positions", :as => :update_positions_troop_type

  resources :troop_types

  resources :troops do
    resources :options
  end

  match '/backbone' => 'home#backbone'

  root :to => 'home#index'
end
