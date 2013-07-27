require 'sinatra'

set :port, 8000
set :bind, '127.0.0.1'

get '/' do
    @message = "Hello!"
    erb :index
end


get '/shoe/:name' do
    name = params[:name].capitalize
    @message ="Hello #{name}, nice shoes!"
    @image_path = 'shoe.jpg'
     erb :shoe
end 

get '/shoe/:name/lots' do
    name = params[:name].capitalize
    @message ="Hello #{name}, nice shoes! I like them a lot."
     erb :index
end 

get '/shoe/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
   @message = "Hello #{name}, nice shoes! -From #{from}."
     erb :index
end 

