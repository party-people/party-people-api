Rails.application.routes.draw do
  use_doorkeeper
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :users, only: [:create]
      resources :articles
    end
  end
end
