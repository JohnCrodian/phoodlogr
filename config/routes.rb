Rails.application.routes.draw do
<<<<<<< HEAD
=======

>>>>>>> c41b07aefa80d746a43e2beeb0e243b30b4fb43b
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'home#index'

get '/v2/search', to: 'home#show'

end
