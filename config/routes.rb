ScaladbComBr::Application.routes.draw do

  root :to => "pages#index"

  get "empresa" => "pages#empresa", :as => "empresa"

end
