#-*- coding:utf-8 -*-
class UsuarioslistagemController < ApplicationController
  def index
    #if current_user.tipo == 'Administrador'
    #  @atividades = Atividade.all.order("aluno_id,created_at DESC").paginate(page: params[:page], per_page: 10)
    #else
     # if current_user.tipo == 'Aluno'
      #  @atividades = Atividade.where(aluno_id: current_user.id).order("aluno_id, created_at DESC").paginate(page: params[:page], per_page: 10)
      #else
       # @atividades = Atividade.where(julgador_id: current_user.id).order("aluno_id, created_at DESC").paginate(page: params[:page], per_page: 10)
      #end
    #end
    @useres = User.all.paginate(page: params[:page], per_page: 10)
      #end
    respond_to do |format|
      format.html
      format.pdf do
        pdf = UseresReport.new(@useres)
        send_data pdf.render, filename: 'UsuariosListagem.pdf', :width => pdf.bounds.width,
        type: 'application/pdf', disposition: :inline, :page_size => "A4", :page_layout => :portrait
      end
    end
  end
end


