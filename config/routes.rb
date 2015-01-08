Rails.application.routes.draw do
  # resources :sets

  get '/sets', to: 'sets#index', as: 'sets'
  get '/sets/:id', to: 'sets#show', as: 'set'

  get '/sets/cards/:id', to: 'cards#show', as: 'card'
end
