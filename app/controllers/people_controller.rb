class PeopleController < ApplicationController
    
    def index
        people = Person.all
        render json: people
    end

    def create
      person = Person.new({:nombre => params[:nombre],
                           :correo => params[:correo],
                            :contrasenha => params[:password],
                            :foto => params[:foto]
                           })
      if person.save
        render :json => person
      else
        render :json => {:status => :error, :message => 'error al agregar el usuario'}
      end

    end

    def delete
      @id = params[:id]
      @person = Person.where(id: @id)
      if Person.delete(@person)
        render :json => {:status => :ok, :message => 'Usuario eliminado'}
      else
        render :json => {:status => :error, :message => 'Error eliminando al usuario'}
      end
    end

    def show
      @id = params[:id]
      @person = Person.where(id: @id)
      render :json => @person
    end

    def login
      @correo = params[:email]
      @person = Person.where(correo: @correo)
      if @person != nil
        render :json => {status: 'true'}
      else
        render :json => {status: 'false'}
      end

    end


    def reservar

      correo = params[:email]
      person = Person.where(correo: correo)

      idExcursion = params[:id_excursion]
      excursion = Excursion.find(idExcursion)



      excursion_persona = excursion.excursion_personas.create(people_id: person.id)

      if excursion_persona.save
        render :json => excursion_persona

      else
        render :json => {status: 'error al reservar'}
      end

    end


end
