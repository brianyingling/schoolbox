Schoolbox::Application.routes.draw do
  root :to=>'home#index'
  resources :teachers, :students, :courses, :klasses, :posts, :comments, :assignments, :grades
  # resources :assigments, :only => [:index]
  resources :assignments do
    member do
      post 'assign_grades'
    end
  end

  get '/dashboard'=>'home#dashboard'

  get '/login'=>'session#new'
  post '/login'=>'session#create'
  delete '/login'=>'session#destroy'
end
