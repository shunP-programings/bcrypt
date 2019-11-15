Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'login#login'
  post '/login', to: 'login#create'
  delete '/logout', to: 'login#destroy'
  get '/login/main'
  root to: 'users#index'
  resources :users
end
