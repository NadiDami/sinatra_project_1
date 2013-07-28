require 'sinatra'

set :port, 8000
set :bind, '127.0.0.1'

get '/' do
    @message = "Do your chores!!"
    erb :index
end


get '/clean/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Clean the house, #{name}! Thanks, #{from}."
    @image_path = 'shoe.jpg'
    erb :index
end 

get '/bedroom/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Your bedroom could do with a tidy, #{name}! Thanks, #{from}."
    @image_path = 'shoe.jpg'
    erb :index
end 

get '/vacuum/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Isn't it your turn to do the vacuuming, #{name}? Thanks, #{from}."
    @image_path = 'shoe.jpg'
    erb :index
end 

get '/rubbish/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Please take out the bins, #{name}! Thanks, #{from}."
    @image_path = 'shoe.jpg'
    erb :index
end 

get '/kitches/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="The dishes have been piling up in the sink, #{name}! Thanks, #{from}."
    @image_path = 'shoe.jpg'
    erb :index
end 


