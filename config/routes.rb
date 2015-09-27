Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :items, only:[:index, :show, :new]
  resources :carts, only:[:create]
  resources :items
  resources :categories, only:[:show]

  put '/cart', to: 'carts#update'
  get '/cart', to: 'carts#show'
  get '/give', to: 'welcome#give'
  get '/signin_or_signup', to: 'sessions#new'
  get '/new_account', to: 'identities#new'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/auth/failure', to: 'sessions#new'
  get '/dashboard', to: 'sessions#show'
  delete '/logout', to: 'sessions#destroy'
  get '/about', to: 'welcome#about'

  #content routes - manually done b/c no singular/plural distinction
  get '/content/new', to: 'content#new'
  post '/content/submit', to: 'content#create'
  patch '/content/submit', to: 'content#update'
  get '/content', to: 'content#index'
  get '/content/:id/edit', to: 'content#edit', as: 'edit_content'
  delete '/content/:id', to: 'content#destroy', as: 'delete_content'

  namespace :admin do
    resources :categories, only: [:index, :show, :destroy, :new, :create]
  end
end
