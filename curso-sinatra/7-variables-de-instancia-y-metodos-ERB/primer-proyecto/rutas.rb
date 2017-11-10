require 'sinatra'

get '/' do
	unless params[:nombre]
		"Hola mundo!"
	else
		"Hola #{params[:nombre]}!"
	end
	@nombre = "Juan"
	erb :index
end

get '/:nombre' do
	"Hola #{params[:nombre]}!"
end

post 'nuevo/objeto' do
	"Hemos creado un nuevo objeto con el verbo #{params[:verbo]}"
end