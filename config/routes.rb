Rails.application.routes.draw do
  get 'oauths/oauth'

  get 'oauths/callback'

  root to: 'public#index'

  resources :cards, except: [:show] do
    member do
      post :check
    end
  end

  resources :user_sessions
  resources :users

  get '/login' => 'user_sessions#new', as: :login
  post '/logout' => 'user_sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'oath/oauth'
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback" # for use with Github, Facebook
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
end
