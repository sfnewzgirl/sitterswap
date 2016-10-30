Rails.application.routes.draw do

  get '/', to: 'login_details#index', as: 'root'

  resources :login_details
  resources :families
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
