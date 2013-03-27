Schoolbox::Application.routes.draw do
  resources :teachers, :students, :courses, :klasses, :posts, :comments
  root :to=>'home#index'


  get '/dashboard'=>'home#dashboard'

  get '/login'=>'session#new'
  post '/login'=>'session#create'
  delete '/login'=>'session#destroy'
end
