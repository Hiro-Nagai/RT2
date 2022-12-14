Rails.application.routes.draw do
  
  get '/account',to:'users#account'
  get '/profile',to:'users#profile'
  devise_for :users,controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root to: "homes#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/',to:'homes#home'
  
  resources :users
  get 'rooms/search',to:'rooms#search'
  get 'rooms/posts',to:'rooms#posts'
  resources :rooms
  resources :reservations
   
 

 
end