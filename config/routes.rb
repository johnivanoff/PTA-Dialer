Pta::Application.routes.draw do
  get "grades" => "grades#index", :as => "grades"
end
