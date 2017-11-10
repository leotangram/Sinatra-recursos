require 'sinatra'

get '/' do
	unless params[:nombre]
		"Hola mundo!"
	else
		"Hola #{params[:nombre]}!"
	end
end

get '/:nombre' do
	"Hola #{params[:nombre]}!"
end

“/labrador/3”
“/:perro/:id”
“/?gato=persa”
params = {perro: “labrador”, id: 3, gato: “persa” }

