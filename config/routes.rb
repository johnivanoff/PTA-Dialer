Pta::Application.routes.draw do
  get "grades" => "grades#index", :as => "grades"
  get "grades/:id" => "grades#show", :as => "grade"
end
