ScaladbComBr::Application.routes.draw do

  root :to => "pages#index"

  get "empresa" => "pages#empresa", :as => "empresa"
  get "projetos" => "pages#projetos", :as => "projetos"
  get "consultoria" => "pages#consultoria", :as => "consultoria"
  get "laudos" => "pages#laudos", :as => "laudos"
  get "contato" => "contacts#new", :as => "contact"
  resources :contacts, :only => [:create], :path => "contato/enviar"

end
