class Pet < ApplicationRecord
  #TODO Agregar validaciones para campos requeridos, y otras validaciones que apliquen
  belongs_to :owner
end
