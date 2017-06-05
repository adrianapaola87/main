Rails.application.routes.draw do

 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  devise_for :users

root :to => "statics#index"

  get 'statics/index'
  get 'statics/about'
  get 'peliculas/index' 
  

   
   resources :countries
   resources :peliculas do
   resources :comentarios
   end
   resources :settings
  
  get '/about' => 'statics#about', :as => :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
