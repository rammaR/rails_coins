Rails.application.routes.draw do
  resources :mining_types
  resources :coins
  resources :cookies
  resources :authors
  resources :books
  
  get 'patients/index'
  get 'patients/show'
  get 'patients/create'
  get 'patients/delete'
  get 'patients/edit'
  get 'patients/:id', to: 'patients#show'
  get 'welcome/index', to: 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
