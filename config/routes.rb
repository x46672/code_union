CodeUnion::Application.routes.draw do
  resources :front
  resources :dashboard
  resources :account
  resources :project
  resources :contact
  resources :about
  
  root to: 'front#index'

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  

end
