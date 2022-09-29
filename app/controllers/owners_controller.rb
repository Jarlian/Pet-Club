class OwnersController < ApplicationController
  def index
    @owner = Owner.all #Consulto todas las mascotas, es un array de mascotas
  end
  def show
    @owner = Owner.find(params[:id]) #Busco lo que se encuentra en el id clickeado
  end
  def new
    @owner = Owner.new #crea una mascota con atributos vacíos que se llena con el formulario
  end
  def create
    @owner = Owner.new(owner_params)
    pp @owner #muestro en consola
    if @owner.save
      redirect_to owners_path
    else
      render :new
    end
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update(owner_params)
      redirect_to owners_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy
    redirect_to owners_path, status: :see_other #¿esto se hace siempre para la petición DELETE?
  end
  private

  def owner_params
    params.require(:owner).permit(:nombre, :cedula, :telefono, :correo)
  end
end
