Rails.application.routes.draw do
  get  'main/index'
  get 'affirmations/index'
  get 'motivations/index'
  get 'meditations/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :main, only: [:index] do
  resources :affirmations, only: [:index, :show, :new, :update, :create, :update, :destroy]
  resources :motivations, only: [:index, :show] 
    resources :meditations, only: [:index, :show]
  end
 
  resources :video, only: [:index, :show]
  resources :audio, only: [:index, :show]
  root 'main#index'
end
