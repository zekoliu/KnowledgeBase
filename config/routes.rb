Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :topic, only: %i[index create show update destroy] do
        put 'review', on: :collection
      end

      resources :subject, only: %i[index create update]

      resources :user, only: %i[create] do
        get 'detail', on: :collection
        put 'u_info', on: :collection
      end

      resources :moments, only: %i[index create destroy]
    end
  end
end
