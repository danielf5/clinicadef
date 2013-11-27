class Medico < ActiveRecord::Base
  belongs_to :especialidad
  attr_accessible :id, :apellidos, :celular, :curriculum, :email, :identificacion, :nombres, :reconocimientos
end
