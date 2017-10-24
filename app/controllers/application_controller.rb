class ApplicationController < ActionController::API
  def index
    render :json => :msj => 'hola'
  end
end
