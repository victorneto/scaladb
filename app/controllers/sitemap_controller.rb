class SitemapController < ApplicationController

  def index
    headers['Content-Type'] = 'application/xml'
    @static_pages = [
      { :url => root_url                                 , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => empresa_url                              , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => acustica_de_edificacoes_url              , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => acustica_de_edificacoes_projetos_url     , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => acustica_de_edificacoes_consultoria_url  , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => acustica_de_edificacoes_laudos_url       , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => industrias_url                           , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => industrias_projetos_url                  , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => industrias_consultoria_url               , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => industrias_laudos_url                    , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => meio_ambientes_url                       , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => meio_ambientes_laudos_url                , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) } ,
      { :url => contact_url                              , :updated_at => DateTime.new(2013 , 2 , 2 , 0 , 0 , 0) }
    ]
    respond_to do |format|
      format.xml { render :layout => false }
    end
  end

end