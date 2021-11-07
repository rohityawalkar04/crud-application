Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "users#index"

  resources :users, only: [:index, :create]
  resources :players
  resources :sessions, only: [:create]

  get "log_out" => "sessions#destroy"

  # below are 7 restfull routes

  # get "players" => "players#index"
  # get "players/new" => "players#new"
  # post "players" => "players#create"
  # get "players/:id" => "players#show", as: "player"
  # get "players/:id/edit" => "players#edit", as: "player_edit"
  # patch "players/:id" => "players#update"
  # delete "players/:id" => "players#destroy"
end
