Rails.application.routes.draw do
  get 'static_pages/sobre'

  get 'static_pages/contato'

  devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'
  root :to => "home#index"

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
