Rails.application.routes.draw do
  get 'user_sessions/new'

  get 'user_sessions/create'

  get 'user_sessions/destroy'

  root to: 'public#index'

  resources :cards, except: [:show] do
    member do
      post :check
    end
  end

  resources :users, except: [:show] do
  end

  resource :user, only: [] do
    get :login, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
