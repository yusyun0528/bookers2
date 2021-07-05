Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get 'books' => 'books#index'
  resources :books, only: [:create, :edit, :show, :update, :destroy]
  resources :users, only: [:show, :edit, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
