Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #get 'home/index'
  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations'

  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :categories, only: [:index, :show]

  get 'search', to: 'products#search', as: 'search_products'
  resources :products, only: [:show]
  # root "posts#index"
end
