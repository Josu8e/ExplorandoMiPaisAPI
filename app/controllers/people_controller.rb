class PeopleController < ApplicationController
    
    def index
        people = Person.all
      render json: people
    end

    def create
      begin
      @person = Person.new({:name => params[:name],
                        :correo => params[:email],
                        :contrasenha => params[:password],
                        :foto => params[:photo]
                       })
      @person.save
      render :json => @person

      rescue Exception => e
        render :json => {:status => :error, :message => e}

      end

    end


end
