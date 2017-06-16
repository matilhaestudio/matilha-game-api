Rails.application.routes.draw do
  resources :game_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "game_events#index"
end
