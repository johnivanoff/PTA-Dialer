Pta::Application.routes.draw do
  
  get "teachers" => "teachers#index", :as => "teachers"
  get "teachers/:id" => "teachers#show", :as => "teacher"

  get "grades" => "grades#index", :as => "grades"
  get "grades/:id" => "grades#show", :as => "grade"
end
