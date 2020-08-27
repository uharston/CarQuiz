Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars, only: %i[index show update]
  get '/game', to: 'cars#game'
end
