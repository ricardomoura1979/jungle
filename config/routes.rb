Rails.application.routes.draw do

  resources :users
  root to: 'products#index' #like get '/' => 'products#index or get '/'=> { controller: 'products', action: 'index'}
  get '/about', to: 'about#show'
  resources :products, only: [:index, :show]
  resources :categories, only: [:show]

  resource :cart, only: [:show] do
    post   :add_item
    post   :remove_item
  end

  resources :orders, only: [:create, :show]
 
  namespace :admin do
    root to: 'dashboard#show'
    resources :products, except: [:edit, :update, :show]
    resources :categories, only: [:index, :new, :create]
  end

    # These routes will be for signup. The first renders a form in the browse, the second will 
    # receive the form and create a user in our database using the data given to us by the user.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'


end
