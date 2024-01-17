Rails.application.routes.draw do
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  root "pages#home"
  get "place" => "pages#place"
  get "housing" => "pages#housing"
  get "program" => "pages#program"
  get "pictures" => "pages#pictures"
  get "rsvp" => "pages#rsvp"
  get "presentsList" => "pages#presentsList"

  # Defines the root path route ("/")
  # root "posts#index"
end
