Schoolbox::Application.routes.draw do
  resources :teachers, :students, :courses, :klasses, :posts, :comments
  root :to=>'home#index'

  get '/login'=>'session#new'
  post '/login'=>'session#create'
end
