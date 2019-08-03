Rails.application.routes.draw do
  # resources :packages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :packages, only: [:index, :update]
    end
  end

end
