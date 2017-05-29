Rails.application.routes.draw do

  devise_for :users

root :to => "statics#index"

  get 'statics/index'
  get 'statics/about'
  get 'peliculas/index' 

  resources :peliculas
  
  get '/about' => 'static#about', :as => :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
