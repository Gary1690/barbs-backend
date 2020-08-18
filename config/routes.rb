Rails.application.routes.draw do
  patch 'users/update/password/:id', to: 'user#update_password'
  post '/users/login', to: 'users#login'
  resources :invoice_lines
  resources :services
  resources :invoices
  resources :appointments
  resources :users
  resources :customers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
