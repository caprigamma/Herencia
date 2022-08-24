class EdificiosController < ApplicationController
    def index #muestra informacion
        @edificios = Edificio.all  #La variable edificios nos servira para listar nuestros edificios
    end

    def show #muestra el detalle de cada edificio en forma particular

    end

    def new #Crear informacion dentro de la base de datos
        @edificio = Edificio.new  #inicializada la instancia. Cada vez que creamos algo, la clase creara la instacia y podremos realizar la clase del objeto
                                    #Edificio es la clase que hace referencia al modelo
    end

    def edit #muestra nuestra lista de cosas que hay que realizar
    
    end

    def create                                                                                              #Para crear elementos para nuestra base de datos
        @edificio = Edificio.new(params.require(:edificio).permit(:nombre, :direccion, :ciudad))             #params=comando exclusivo de rails que permite autorizar los permisos entre bases de datos
        if @edificio.save                                       # si es que el edificio se crea en la base de datos y hay errores, entonces no se crea, caso contrario, el objeto se crea y mostrará un mensaje que el edificio se ha creado exitosamente.
            redirect_to edificios_path, notice: "Edificio Creado Exitosamente."  #path es una palabra rservada en rail que significa camino y lo creamos en router
        else 
            render :new, notice: "Intente Nuevamente."
    end
end
end

    def update #Para actualizar datos en la base de datos

    end

    def destroy #borrar informacion en la base de datos

    end

