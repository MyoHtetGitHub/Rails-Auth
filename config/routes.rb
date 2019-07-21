Rails.application.routes.draw do

root 'home#index'

get 'user', to: 'users#new'
post 'user', to: 'users#create'

end
