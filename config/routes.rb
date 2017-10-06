Rails.application.routes.draw do
  devise_for :users
  root "puns#index"

  resources :puns
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
