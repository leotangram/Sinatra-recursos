require 'sinatra'

get '/' do
	“Hola mundo”
	params[:perro]
	params[:gato]
	#etc
end

get '/:nombre' do
	"Hola #{params[:nombre]!}"
end

# “/labrador/3”
# “/:perro/:id”
# “/?gato=persa”
# params = {perro: “labrador”, id: 3, gato: “persa” }

