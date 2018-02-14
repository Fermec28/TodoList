require "sinatra"
require "make_todo"
#Falta rutas para update y delete
#

get '/' do 
	@tareas= Tarea.all
	erb :tareas
end

post '/tareas' do
	Tarea.create(params[:tarea])
	@tareas= Tarea.all
	erb :tareas	
end

delete 'tareas/:id'
	Tarea.destroy(params[:id])
	@tareas= Tarea.all
	erb :tareas	
end