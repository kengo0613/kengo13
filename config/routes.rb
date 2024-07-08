Rails.application.routes.draw do

  get 'japans/new' => 'japans#new'
  post 'japans' => 'japans#create'
  get 'japans/:id' => 'japans#show', as: 'japan'
  patch 'japans/:id' => 'japans#update'
  delete 'japans/:id' => 'japans#destroy' #ここに挿入！！！
  get 'japans/:id/edit' => 'japans#edit', as: 'edit_japan'

  devise_for :users
  resources :perfumes
  resources :users, only: [:show] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :japans do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  
  root 'japans#index'
end