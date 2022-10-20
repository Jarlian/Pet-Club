class OwnersController < ApplicationController
  def index
    @owner = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
    # En la vista usar @owner.pets
    # @pet = Pet.where(owner_id: @owner.id).pluck(:nombre)
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)

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
    @owner.destroy # Como hacer para que al destruir el owner se destruyan todos sus pets asociados?

    redirect_to owners_path, status: :see_other #¿esto se hace siempre para la petición DELETE?
  end

  private

  def owner_params
    params.require(:owner).permit(:nombre, :cedula, :telefono, :correo)
  end
end
