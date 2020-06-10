Rails.application.routes.draw do
  root to: 'training_posts#index'
  resources :training_posts do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, except: :index

  get '/top', to: 'top#index'
  post '/guest_login', to: 'sessions#guest_login'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
