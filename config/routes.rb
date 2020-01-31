Rails.application.routes.draw do
  get 'affirmations/index'
  get 'affirmations/new'
  get 'affirmations/create'
  get 'affirmations/show'
  get 'affirmations/edit'
  get 'affirmations/update'
  get 'affirmations/destroy'
  get 'motivations/index'
  get 'motivations/show'
  get 'meditations/index'
  get 'audio/index'
  get 'audio/show'
  get 'video/index'
  get 'video/show'
  get 'story/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :affirmations, only: [:index, :show, :new, :update, :create, :update, :destroy]
  resources :motivations, only: [:index, :show] 
  resources :meditations, only: [:index, :show]
  resources :video, only: [:index, :show]
  resources :audio, only: [:index, :show]
  resources :stories, only: [:index, :show]
  
  root 'affirmations#index'
end
