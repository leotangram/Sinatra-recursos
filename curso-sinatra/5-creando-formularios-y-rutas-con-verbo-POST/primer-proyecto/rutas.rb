require 'sinatra'

get '/' do
	unless params[:nombre]
		"Hola mundo!"
	else
		"Hola #{params[:nombre]}!"
	end
	<<-HTML 
		<form action="/nuevo/objeto" method="post">
			<input type="text" name="verbo"></input>
			<input type="submit" value="Estoy haciendo una petición POST"></input>	
		</form>
	HTML
end

get '/:nombre' do
	"Hola #{params[:nombre]}!"
end

post 'nuevo/objeto' do
	"Hemos creado un nuevo objeto con el verbo #{params[:verbo]}"
end