class Owner < ApplicationRecord
  #TODO Agregar validaciones para campos requeridos, y otras validaciones que apliquen

  has_many :pets
end
