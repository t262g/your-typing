Rails.application.routes.draw do
  devise_for :users
  root to: 'quizzes#index'
  resources :quizzes, only: [:index, :new, :create]
end
