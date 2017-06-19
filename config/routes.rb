Rails.application.routes.draw do
  get 'payment_select/select_plan'

  get 'payment_select/select_monthly_subscription'

devise_for :users
 
devise_for :admin_users, ActiveAdmin::Devise.config
ActiveAdmin.routes(self)
resources :settings
resources :charges
resources :payment_select


  


  get 'statics/index'
  get 'statics/about'
  get 'peliculas/index' 
  
  get 'settings/index'
 

   
   resources :countries
   resources :peliculas do
   resources :comentarios
   
   get '/about' => 'statics#about', :as => :about
   end
    root :to => "statics#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
