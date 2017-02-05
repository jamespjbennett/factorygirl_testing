Rails.application.routes.draw do
  resources :players
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'teams/players/:id', to: 'teams#players', as: 'teams_players'
  root 'teams#index'
end
