Rails.application.routes.draw do
  resources :cars


  devise_for :users
  root to: "home#index"
	devise_scope :user do  
  get 'login', to: 'devise/sessions#new'
  delete 'logout', to: 'devise/sessions#destroy' #essential to now create stuff.
	post "/user" => "registrations#create" #essential to now create stuff.
	end
  get "/" => "home#index", as: "home"
  

  get 'edit' => 'cars#edit'
  post  'edit'   => 'cars#update'

  # get 'edit' => "cars#edit"
  # post 'edit' => "cars#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  

  
end
