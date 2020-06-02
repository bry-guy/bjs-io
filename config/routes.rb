Rails.application.routes.draw do
  resources :helloworld, only: [:index]
  get '/helloworld', to: 'helloworld#index'
end
