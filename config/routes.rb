Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # route 'static_pages#landing'
  root to: 'static_pages#landing'
  resources :users, except: [:destroy]
  resource :sessions, only: [:create, :new, :destroy]
  resources :dashboard, only: [:index]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :posts, only: [:new, :show, :create]
end
