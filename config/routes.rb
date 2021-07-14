Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  resources :books, only: [:edit, :show, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:edit, :show, :update, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
