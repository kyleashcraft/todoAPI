Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: [] do
      resources :lists
    end

    resources :lists, only: [] do
      resources :items, only: [:create]
    end

    post '/new_user/', to: 'users#create'
    delete '/delete_account/', to: 'users#destroy'
    get '/user/', to: 'users#index'

    resources :items, only: [:destroy, :update]
  end
end
