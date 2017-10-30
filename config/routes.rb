Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/test' => 'people#index'
  post 'people/create'
  post 'people/delete'
  get   'people/show'
  get   'people/login'
  #get '/getExcursiones/:parametro' => nombrecontrolador#nombremetodo

end
