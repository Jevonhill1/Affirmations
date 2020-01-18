Rails.application.routes.draw do
  get 'affirmations/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :affirmations

  root 'affirmations#index'
end
