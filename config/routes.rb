Rails.application.routes.draw do
  devise_for :users
  root to: 'quizzes#index'
  resources :quizzes do
    resources :comments, only: [:new, :create]
    resources :quiz_lists, only: [:new, :create]
  end
  resources :users, only: [:show, :edit, :update]
end
