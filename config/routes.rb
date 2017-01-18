Rails.application.routes.draw do

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'home#index'

get '/v2/search', to: 'home#show'

post '/v2/restaurants/create', to: 'restaurants#new'


end
