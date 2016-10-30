Rails.application.routes.draw do

  get '/', to: 'welcome#home', as: 'root'

  get '/about', to: 'welcome#about', as: "about_page"
  get '/login', to: 'sessions#new', as: "login"
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  # resources :login_details
  resources :families
  resources :people

end
