Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :items, only:[:index, :show, :new]
  resources :carts, only:[:show, :update]
  get '/cart', to: 'carts#show'
  patch '/carts', to: 'carts#update'
  get '/give', to: 'give#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/dashboard', to: 'sessions#show'
  delete '/logout', to: 'sessions#destroy'

  #content routes - manually done b/c no singular/plural distinction
  get '/content/new', to: 'content#new'
  post '/content/submit', to: 'content#submit'
  get '/content', to: 'content#index'
  get '/content/:id/edit', to: 'content#edit', as: 'edit_content'
  delete '/content/:id', to: 'content#destroy'
end
