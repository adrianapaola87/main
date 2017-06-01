Rails.application.routes.draw do

 
  resources :controllers
  devise_for :users

root :to => "statics#index"

  get 'statics/index'
  get 'statics/about'
  get 'peliculas/index' 
  

  resources :peliculas
  resources :countries
  resources  :peliculas do
  resources :comentarios
end
  
  get '/about' => 'statics#about', :as => :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
