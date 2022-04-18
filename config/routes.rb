Rails.application.routes.draw do
  get '/' => 'uploads#index'
  post '/upload' => 'uploads#upload'

  root 'uploads#index'
end
