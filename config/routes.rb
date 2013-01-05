ScaladbComBr::Application.routes.draw do

  root :to => "pages#index"

  get "empresa" => "pages#empresa", :as => "empresa"
  get "contato" => "contacts#new", :as => "contact"

end
