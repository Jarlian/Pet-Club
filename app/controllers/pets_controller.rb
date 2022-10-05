class PetsController < ApplicationController
  def index
    @pets = Pet.all #Consulto todas las mascotas, es un array de mascotas
  end
  def show
    @pet = Pet.find(params[:id]) #Busco lo que se encuentra en el id clickeado
    @owner = Owner.find(@pet.owner_id)
  end
  def new
    @pet = Pet.new #crea una mascota con atributos vacíos que se llena con el formulario
  end
  def create
    @pet = Pet.new(pet_params)
    pp @pet #muestro en consola
    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pets_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other #¿esto se hace siempre para la petición DELETE?
  end
  private

  def pet_params
    params.require(:pet).permit(:nombre, :raza, :especie, :comida, :enfermedades, :cuidados, :alergias, :owner_id)
  end
end
