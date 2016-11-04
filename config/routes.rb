Rails.application.routes.draw do

  get 'recipes/search'

  get 'recipes/show'

  get 'sessions/new'

  get 'users/new'

  get 'pages/login'

  

  get 'pages/home'
  
  

	get 'login' => 'sessions#new'
	resources :sessions
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'

	get 'register' => 'pages#register'

	get 'home' => 'pages#home'
	
	get 'contact'=>'pages#contact'
	get 'userprofile' =>'pages#userprofile'
	get 'results'=>'pages#results'

	get '/' => 'pages#home'

	resources :users
	
	get '/pages/search_results' => 'pages#search_results'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
