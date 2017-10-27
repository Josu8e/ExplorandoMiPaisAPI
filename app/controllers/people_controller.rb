class PeopleController < ApplicationController
    
    def index
        render json: {'status' => 'FUNCA'}, status => 'ok'
    end        

end
