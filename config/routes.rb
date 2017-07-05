Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create]
  # get '/student/new', to: 'students#new', as: 'new_student' #new_student_path
  # get '/student/:id', to: 'students#show', as: 'student' #student_path
  post 'student/:id', to: 'students#create'




end
