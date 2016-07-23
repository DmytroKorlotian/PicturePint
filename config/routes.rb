Rails.application.routes.draw do
  get 'contact/faq'

  root 'home#index'

  get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
