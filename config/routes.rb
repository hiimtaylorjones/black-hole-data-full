Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount_ember_app :frontend, to: "/"

  devise_for :users, controllers: { sessions: 'sessions' }, defaults: { format: :json }

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end

  namespace :api_testing do
    namespace :v1 do
      resources :posts
    end
  end
end
