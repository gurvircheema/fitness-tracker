Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  authenticated :user do
    resources :exercises
  end
end
