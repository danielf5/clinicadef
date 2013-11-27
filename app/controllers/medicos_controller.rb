class MedicosController < ApplicationController
  def new
    @medico = Medico.new();
  end

  def index
    @medicos = Medico.select("id, nombres, apellidos, curriculum, celular, email, reconocimientos, especialidad_id");
  end

  def create
    @medico = Medico.new(medico_params);
    if @medico.save()
      redirect_to medicos_path, :notice => "Medico guardado con exito!";
    else
      render "new";
    end
  end

  def show
    @medico = Medico.find(params[:id]);
  end

  def edit
    @medico = Medico.find(params[:id]);
    @nombres = @medico.nombres;
    @apellidos = @medico.apellidos;
    @identificacion = @medico.identificacion;
    @email = @medico.email;
    @curriculum = @medico.curriculum;
    @celular = @medico.celular;
    @reconocimientos = @medico.reconocimientos;
    @especialidad_id = @medico.especialidad_id;
  end

  def update
    @medico = Medico.find(params[:id]);
    @medico.nombres = params[:medico]["nombres"];
    @medico.apellidos = params[:medico]["apellidos"];
    @medico.identificacion = params[:medico]["identificacion"];
    @medico.email = params[:medico]["email"];
    @medico.celular = params[:medico]["celular"];
    @medico.reconocimientos = params[:medico]["reconocimientos"];
    @medico.especialidad_id = params[:medico]["especialidad_id"];
    @medico.curriculum = params[:medico]["curriculum"];
    if @medico.save()
      redirect_to medicos_path, :notice => "El medico se modifico con exito!";
    else
      render "edit";
    end
  end

  def destroy
    @medico = Medico.find(params[:id]);
    if @medico.destroy()
      redirect_to medicos_path, :notice => "Medico eliminado con exito!";
    else
      redirect_to medicos_path, :notice => "El medico no ha podido ser eliminada";
    end
  end

  private
  def medico_params
    params.require(:medico).permit(:id, :identificacion, :nombres, :curriculum, :email, :celular, :reconocimientos, :especialidad_id, :apellidos);
  end
end
