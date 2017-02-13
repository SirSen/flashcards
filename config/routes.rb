Rails.application.routes.draw do
  root to: 'public#index'

  resources :cards, except: [:show] do
    member do
      post :check
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
