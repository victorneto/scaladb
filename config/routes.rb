ScaladbComBr::Application.routes.draw do

  root :to => "pages#index"
  get "sitemap", :to => "sitemap#index"

  get "empresa" => "pages#empresa", :as => "empresa"
  get "acustica-de-edificacoes" => "acustica_de_edificacoes#index", :as => "acustica_de_edificacoes"
  get "acustica-de-edificacoes/projetos" => "acustica_de_edificacoes#projetos", :as => "acustica_de_edificacoes_projetos"
  get "acustica-de-edificacoes/consultoria" => "acustica_de_edificacoes#consultoria", :as => "acustica_de_edificacoes_consultoria"
  get "acustica-de-edificacoes/laudos" => "acustica_de_edificacoes#laudos", :as => "acustica_de_edificacoes_laudos"
  get "industria" => "industrias#index", :as => "industrias"
  get "industria/projetos" => "industrias#projetos", :as => "industrias_projetos"
  get "industria/consultoria" => "industrias#consultoria", :as => "industrias_consultoria"
  get "industria/laudos" => "industrias#laudos", :as => "industrias_laudos"
  get "meio-ambiente" => "meio_ambientes#index", :as => "meio_ambientes"
  get "meio-ambiente/laudos" => "meio_ambientes#laudos", :as => "meio_ambientes_laudos"

  get "contato" => "contacts#new", :as => "contact"
  resources :contacts, :only => [:create], :path => "contato/enviar"

end
