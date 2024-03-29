Rails.application.routes.draw do
  get 'profils/index'
  get '/profil/:profil_page_id', to: "profil#show"
  get '/', to: 'gossips#index'
  get '/welcome', to: 'gossips#index'
  get '/welcome/:first_name', to: 'gossips#index'
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'

  resources :gossips 
  resources :profils
  



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

end
