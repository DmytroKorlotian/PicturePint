Rails.application.routes.draw do

  resources :pints
  devise_for :users
  root 'pints#index'

  get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
