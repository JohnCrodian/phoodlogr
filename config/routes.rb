Rails.application.routes.draw do

  get 'profiles/show'

  get 'profiles/index'

  get 'profiles/create'

  get 'profiles/edit'

  get 'profiles/destroy'

  get 'profiles/update'

  get 'profiles/all'

  get 'profiles/new'

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'home#index'

get '/v2/search', to: 'home#show'

resources :restaurants


end
