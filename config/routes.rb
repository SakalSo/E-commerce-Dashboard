Rails.application.routes.draw do
  #delete sign_up controller
  devise_for :admins, skip: [:registration]

  devise_scope :admin do
    get "signin" => "devise/sessions#new" #devise is namespace , sessions is controller , new is action
  end

  namespace :admin do
    root "dashboard#index"
    get "dashboard" => "dashboard#index", as: "dashboard"
    resources :admins
    resources :categories
  end
  get "home" => "static_pages#home"
  root "static_pages#home"

  resources :categories, only: [:index,:show] do
    resources :products, only: [:index]
  end

  get "cart" => "order_details#index"
  resources :order_details, path: "cart/items"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
