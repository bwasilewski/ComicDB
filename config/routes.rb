Rails.application.routes.draw do
  root "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/home" => "pages#home"
  get "/about" => "pages#about"

  # sign up
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  # sign in
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  
  # log out
  delete 'logout', to: 'sessions#destroy'
  
  # password
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#edit'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
end
