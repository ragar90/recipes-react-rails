Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api do
    resources :recipes, only:[:show, :index]
  end
end
