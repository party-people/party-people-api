Rails.application.routes.draw do
  use_doorkeeper
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :top, only: [:index]
      resources :users, only: [:create]
      resource  :current_user, path: 'me', controller: :current_user, only: [:show]
      resources :categories, only: [:index]
      resources :articles do
        resources :items, only: [:create, :update, :destroy]
      end
    end
  end
end
