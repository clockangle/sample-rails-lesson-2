# frozen_string_literal: true
Rails.application.routes.draw do
  get '/'       => 'top_pages#index'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users  do
    resources :selling_images, only: [:index, :create, :destroy]
  end

  get '/search' => 'search#index'
end
