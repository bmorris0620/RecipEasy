Rails.application.routes.draw do

  get 'pages/login'

  get 'pages/register'

  get 'pages/home'

	get 'login' => 'pages#login'

	get 'register' => 'pages#register'

	get 'home' => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
