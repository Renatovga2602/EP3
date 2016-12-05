Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'
  root :to => "home#index"

  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
