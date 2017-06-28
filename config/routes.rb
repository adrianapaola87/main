Rails.application.routes.draw do
  #get 'payment_select/select_plan'
  get '/select_plan' => 'payment_select#select_plan', as: :select_plan
  #get 'payment_select/select_monthly_subscription'
  get '/select_monthly_subscription' => 'payment_select#select_monthly_subscription', as: :select_monthly_subscription
  get'select_movies/index'
 # Order is important
 devise_for :admin_users, ActiveAdmin::Devise.config
 #before sidekiq
 
 #devise_for :users
  # sidekiq
 devise_for :users, controllers: { registrations: "users/registrations"}
  ActiveAdmin.routes(self)  

   root :to => "statics#index"
   get '/about' => 'statics#about', :as => :about
   get 'statics/index'
  get 'statics/about'
  get 'peliculas/index' 
  get 'settings/index'
 
  resources :peliculas do
   resources :comentarios
end
 

 


resources :settings
resources :charges
resources :payment_select
resources :select_movies, only: :index
resources :countries

root :to => "peliculas#index"
   
   
    

 require 'sidekiq/web'
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
