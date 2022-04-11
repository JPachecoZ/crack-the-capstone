Rails.application.routes.draw do
  get 'enrollments/index'
  get 'enrollments/show'
  get 'enrollments/create'
  get 'enrollments/update'
  get 'enrollments/delete'
  get 'groups/index'
  get 'groups/show'
  get 'groups/create'
  get 'groups/update'
  get 'groups/delete'
  get 'courses/index'
  get 'courses/show'
  get 'courses/create'
  get 'courses/update'
  get 'courses/delete'
  get 'students/index'
  get 'students/show'
  get 'students/create'
  get 'students/update'
  get 'students/delete'
  get 'users/show'
  get 'users/create'
  get 'users/update'
  get 'users/delete'
  get 'users/show'
  get 'users/create'
  get 'users/delete'
  get 'users/update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
