Rails.application.routes.draw do
  resources :exercises
  resources :opinions
  resources :oral_args
  resources :lesson_vital_facts
  resources :lesson_opinions
  resources :lesson_oral_arguments
  resources :lesson_texts
  resources :vital_infos
  resources :lessons
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
