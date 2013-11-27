class Especialidad < ActiveRecord::Base
  attr_accessible :nombre
  has_many :medico
end
