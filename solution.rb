require "sinatra"
require "make_todo"


get '/' do
 # if params[:sum]
 #   @sum = params[:sum].to_i + 1
 # else
 #   @sum = 0
 # end
	@tareas= Tarea.all
	erb :tareas
end

post '/tareas' do
	Tarea.create(params[:tarea])
	@tareas= Tarea.all
	erb :tareas	
end