ScaladbComBr::Application.routes.draw do

  root :to => "pages#index"

  get "empresa" => "pages#empresa", :as => "empresa"
  get "acustica-de-edificacoes" => "pages#acustica_de_edificacoes", :as => "acustica_de_edificacoes"
  get "industria" => "pages#industria", :as => "industria"
  get "meio-ambiente" => "pages#meio_ambiente", :as => "meio_ambiente"
  get "projetos" => "pages#projetos", :as => "projetos"
  get "consultoria" => "pages#consultoria", :as => "consultoria"
  get "laudos" => "pages#laudos", :as => "laudos"
  get "contato" => "contacts#new", :as => "contact"
  resources :contacts, :only => [:create], :path => "contato/enviar"

end
