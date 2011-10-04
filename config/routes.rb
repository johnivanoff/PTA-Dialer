Pta::Application.routes.draw do
  
  get "teachers" => "teachers#index", :as => "teachers"

  get "grades" => "grades#index", :as => "grades"
  get "grades/:id" => "grades#show", :as => "grade"
end
