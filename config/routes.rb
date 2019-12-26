Rails.application.routes.draw do
  devise_for :users
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 
  resources :stores, :products

  root to: "stores#index"
  get "about", to: "application#about"
  get "stores", to: "stores#index"
  get "stores/new", to: "stores#new"
  get "stores/:id", to: "stores#show" 
  post "stores", to: "stores#create"
  get "stores/:id/edit", to: "stores#edit", as: :store_edit
  patch "stores/:id", to: "stores#update"
  delete "stores/:id", to: "stores#destroy"


  get "products/new", to: "products#new"
  post "products", to: "products#create"
end
