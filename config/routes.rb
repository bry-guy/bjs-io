Rails.application.routes.draw do
  resources :blog, only: [:index]
  get 'blog/:title', to: 'blog#show'
end
