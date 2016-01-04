Rails.application.routes.draw do
  use_doorkeeper
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users, only: [:create]
      resource  :current_user, path: 'me', controller: :current_user, only: [:show]
      resources :articles do
        resources :items, only: [:create, :update, :destroy]
      end
    end
  end
end
