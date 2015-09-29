Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/give', to: 'welcome#give'
  get '/about', to: 'welcome#about'

  resources :items, only:[:index, :show]

  resources :carts, only:[:create]
  put '/cart', to: 'carts#update'
  get '/cart', to: 'carts#show'

  resources :categories, only:[:show]

  resources :orders, only:[:index]

  get '/signin_or_signup', to: 'sessions#new'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/auth/failure', to: 'sessions#new'
  get '/dashboard', to: 'sessions#show'
  delete '/logout', to: 'sessions#destroy'
  get '/error', to: 'sessions#error'

  get '/new_account', to: 'identities#new'

  #content routes - manually done b/c no singular/plural distinction
  get '/content/new', to: 'content#new'
  post '/content/submit', to: 'content#create'
  patch '/content/submit', to: 'content#update'
  get '/content', to: 'content#index'
  get '/content/:id/edit', to: 'content#edit', as: 'edit_content'
  delete '/content/:id', to: 'content#destroy', as: 'delete_content'

  namespace :admin do
    resources :categories, only: [:index, :destroy, :new, :create]
    resources :items, only: [:destroy, :new, :create, :update, :edit]
    resources :orders, only: [:index, :edit, :update, :show]
    get '/dashboard', to: 'sessions#show'
  end
end
