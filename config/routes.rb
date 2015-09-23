Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :items, only:[:index, :show, :new]
  get '/cart', to: 'carts#show'
  get '/give', to: 'give#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/dashboard', to: 'sessions#show'
  delete '/logout', to: 'sessions#destroy'
end
