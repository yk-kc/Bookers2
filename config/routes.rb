Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  resources :users, only: [:index, :show, :edit, :update]

  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]

  get "home/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
