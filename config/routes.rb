Rails.application.routes.draw do

  resources :transactions

	namespace :api, path: 'api/' do
   resources :events, :search_suggestions, :users, :pols
  end

 resources :events

 resources :search_suggestions, except: [:new, :edit]

 resources :users, except: [:new, :edit]

 resources :pols


 post '/api/users/signup' => 'api/users#create'

 post '/api/users/login' => 'api/users#attempt_login'

 post '/api/support' => 'api/voting#support'

 post '/api/oppose' => 'api/voting#oppose'
end
