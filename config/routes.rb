Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  get 'pages/login'

  get 'pages/register'

  get 'pages/home'

	get 'login' => 'sessions#new'
	resources :sessions
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'

	get 'register' => 'users#new'

	get 'home' => 'pages#home'

	resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
