require 'sinatra'

set :port, 8000
set :bind, '127.0.0.1'

require 'pony'


## Email setup
## ===========

Pony.options = { 
  :via => 'smtp',
  :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => ENV['USER_NAME'],
      :password             => ENV['PASSWORD'],
      :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
      :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
    }
  }




## Sinatra app
## ===========

get '/' do
    erb :intro
end
 
get '/email' do
    erb :form
end

post '/email' do
    Pony.mail(:to => email, :subject => "#{name} has a message for you!", :body => erb(:email, :layout => false))
    erb :thanks
end

get '/clean/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Clean the house, #{name}! Thanks, #{from}."
    erb :index
end 

get '/bedroom/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Your bedroom could do with a tidy, #{name}! Thanks, #{from}."
    erb :index
end 

get '/vacuum/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Isn't it your turn to do the vacuuming, #{name}? Thanks, #{from}."
    erb :index
end 

get '/rubbish/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Please take out the bins, #{name}! Thanks, #{from}."
    erb :index
end 

get '/kitchen/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="The dishes have been piling up in the sink, #{name}! Thanks, #{from}."
    erb :index
end 

get '/garden/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Your turn to mow the lawn, #{name}! Thanks, #{from}."
    erb :index
end 


get '/me/:from' do
    from = params[:from].capitalize
    @message ="I'll just do all the cleaning, shall I? Thanks, but no thanks! - #{from}."
    erb :index
end 

get '/thanks/:name/:from' do
    name = params[:name].capitalize
    from = params[:from].capitalize
    @message ="Thanks for all of your hard work around the house, #{name}! I really appreciate it! From, #{from} X"
    erb :index
end 

