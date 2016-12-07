Rails.application.routes.draw do
  resources :treinos
  devise_for :users, controllers: { registrations: "registrations" }
  resources :admin_views
  get 'tests/show'
  get 'users/show'
  get 'static_pages/sobre'
  get 'static_pages/contato'
  get 'home/index'
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
