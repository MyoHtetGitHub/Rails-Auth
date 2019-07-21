Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/index'
root 'home#index'

get 'user', to: 'users#new'
post 'user', to: 'users#create'
get 'session', to: 'sessions#new'
post 'session', to: 'sessions#create'
get 'logout',  to: 'sessions#destroy'

end
