Rails.application.routes.draw do

  post '/users/login', to: 'users#login'
  patch 'appointments/pay/:id', to: 'appointments#pay'
  resources :invoice_lines
  resources :services
  resources :invoices
  resources :appointments
  resources :users
  resources :customers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
