Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
	devise_scope :user do  
	post "/user" => "registrations#create"
	end
  get "/" => "home#index", as: "home"
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cars

end
