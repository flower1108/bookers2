Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get '/home/about' => 'homes#about', as: 'about'
  get '/users' => 'users#index', as: 'users'

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
