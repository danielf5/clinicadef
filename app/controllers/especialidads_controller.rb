class EspecialidadsController < ApplicationController
  def index
    @especialidades = Especialidad.select("id, nombre");
  end

  def new
    @especialidad = Especialidad.new();
  end

  def create
    @especialidad = Especialidad.new(esp_params);
    if @especialidad.save()
      redirect_to especialidads_path, :notice => "Especialidad guardada con exito!";
    else
      render "new";
    end
  end

  def show
    @especialidad = Especialidad.find(params[:id]);
  end

  def edit
    @especialidad = Especialidad.find(params[:id]);
    @nombre = @especialidad.nombre;
  end

  def update
    @nombre = params[:especialidad]["nombre"];
    @especialidad = Especialidad.find(params[:id]);
    @especialidad.nombre = @nombre;
    if @especialidad.save()
      redirect_to especialidads_path, :notice => "La especialidad se modifico con exito!";
    else
      render "edit";
    end
  end

  def destroy
    @especialidad = Especialidad.find(params[:id]);
    if @especialidad.destroy()
      redirect_to especialidads_path, :notice => "Especialidad eliminada con exito!";
    else
      redirect_to especialidads_path, :notice => "La especialidad no ha podido ser eliminada";
    end
  end

  private
  def esp_params
    params.require(:especialidad).permit(:id, :nombre)
  end
end
