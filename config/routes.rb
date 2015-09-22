Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :items, only:[:index, :show, :new]
  get '/cart', to: 'carts#show'
end
