Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'cooks#index'
  post '/rate' => 'rater#create', :as => 'rate'
  # resources :cook_categories
  resources :cook_categories 
  resources :cooks
  resources :reviews

  get '/review' => 'cooks#create_review'
  post 'cooks/create_review'

  	get '/review' => 'cooks#create_review'
	post 'cooks/create_review'
	get '/review' => 'cooks#new_review'
	post 'cooks/new_review'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
