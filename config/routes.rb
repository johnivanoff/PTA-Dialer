Pta::Application.routes.draw do

  get "students" => "students#index", :as => "students"
  get "students/:id" => "students#show", :as => "student"
  
  get "teachers" => "teachers#index", :as => "teachers"
  get "teachers/:id" => "teachers#show", :as => "teacher"
  get "teachers/:teacher_id/students" => "teachers#students", :as => "teacher_students"

  get "grades" => "grades#index", :as => "grades"
  get "grades/:id" => "grades#show", :as => "grade"
  
  get "parents" => "parents#index", :as => "parents"
  
  root :to => "welcome#index"
  
end
