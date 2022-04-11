Rails.application.routes.draw do

  resources :users
  resources :courses
  resources :students
  resources :groups
  resources :enrollments

  get '/' => "users#index"

  root "users#index"
end
