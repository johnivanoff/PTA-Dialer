Pta::Application.routes.draw do

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions

  get "sessions/new"

  get "users/new"

  get "students" => "students#index", :as => "students"
  get "students/:id" => "students#show", :as => "student"

  get "grades" => "grades#index", :as => "grades"
  get "grades/:id" => "grades#show", :as => "grade"
  
#  get "parents" => "parents#index", :as => "parents"
#  get "parents/:id" => "parents#show", :as => "parent"
#  get "parents/new" => "parents#new", :as => "new_parents"
  resources :parents
  
  get "teachers" => "teachers#index", :as => "teachers"
  get "teachers/:id" => "teachers#show", :as => "teacher"
  get "teachers/:teacher_id/students" => "teachers#students", :as => "teacher_students"
  
  root :to => "welcome#index"
  
end
