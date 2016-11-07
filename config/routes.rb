Rails.application.routes.draw do

  get 'recipes/search'

  get 'recipes/show'

  get 'recipes/browse'

  get 'sessions/new'

  get 'users/new'

  get 'pages/login'

  get 'sessions/profile'

  get 'pages/home'
 

	get 'login' => 'sessions#new'
	get 'profile' => 'sessions#profile'
	resources :sessions
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'

	get 'register' => 'users#new'

	get 'home' => 'pages#home'
	
	get 'contact'=>'pages#contact'
	get 'browse'=>'recipes#browse'

	get '/' => 'pages#home'

	resources :users
	
	get '/pages/search_results' => 'pages#search_results'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
