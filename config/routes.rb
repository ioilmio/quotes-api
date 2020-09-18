Rails.application.routes.draw do
  root to: "api/v1/quotes#random"

  namespace :api do
    namespace :v1 do
      resource :quotes do
      get 'index'
      get 'random'
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
