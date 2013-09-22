Schoolbox::Application.routes.draw do
  root :to=>'home#index'
  resources :teachers, :students, :courses, :klasses, :posts, :comments, :assignments, :grades, :notes
  resources :assignments do
    member do
      post 'assign_grades'
    end
  end

  resources :students do
    collection do
      post 'enroll'
    end
  end

  resources :klasses do
    member do
      post 'update_roster'
    end
  end

  get '/dashboard'=>'home#dashboard'
  get '/login'=>'session#new'
  post '/login'=>'session#create'
  delete '/login'=>'session#destroy'
end
