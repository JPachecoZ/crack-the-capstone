Rails.application.routes.draw do

  resources :users
  resources :courses
  resources :students
  resources :groups
  resources :enrollments

  root "users#index"
end
