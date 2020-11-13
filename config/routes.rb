Rails.application.routes.draw do
  devise_for :users
  root to: 'quizzes#index'
  resources :quizzes
  resources :users, only: :show
end
