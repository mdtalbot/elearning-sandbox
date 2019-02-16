Rails.application.routes.draw do
  resources :exercises
  resources :opinions, only: [:index, :show]
  resources :oral_args, only: [:index, :show]
  resources :lesson_vital_facts, only: [:index, :show]
  resources :lesson_opinions, only: [:index, :show]
  resources :lesson_oral_arguments, only: [:index, :show]
  resources :lesson_texts, only: [:index, :show]
  resources :vital_infos, only: [:index, :show]
  resources :lessons
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
