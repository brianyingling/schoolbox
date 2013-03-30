Schoolbox::Application.routes.draw do
  root :to=>'home#index'
  resources :teachers, :students, :courses, :klasses, :posts, :comments


  get '/dashboard'=>'home#dashboard'

  get '/login'=>'session#new'
  post '/login'=>'session#create'
  delete '/login'=>'session#destroy'
end
