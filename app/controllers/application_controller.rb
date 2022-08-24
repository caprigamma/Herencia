class ApplicationController < ActionController::Base
    def index
        @edificios = Edificio.all
end

def show

end

def new
        @edificio = Edificio.new
end

def edit

end

def create
    @edificio = Edificio.new(params.require(:edificio).permit(:nombre, :direccion, :ciudad))
    if @edificio.save
        redirect_to @edificio, notice "Edificio Creado Exitosamente."
    else
        render :new, notice: "Intente Nuevamente"
end

def update #metodo path

end

def destroy

end
end
