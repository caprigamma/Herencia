class Edificio < ApplicationRecord
    has_many :departamento #Muchos departamentos

    validates :nombre, presence: true  #Comando que quiere decir que antes de que grabe el dato en la base de datos en admin, valide que este el dato de nombre.
    validates :direccion, presence: true
    validates :ciudad, presence: true
    
end
