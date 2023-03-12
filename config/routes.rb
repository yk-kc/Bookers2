Rails.application.routes.draw do
  resources :users, only: [:index, :show, :edit, :update]

  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]

  root to: "homes#top"
  devise_for :users
  get "homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
