require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Client <ActiveRecord::Base 
end

class Barber <ActiveRecord::Base 
end

before do
	@barbers = Barber.all
end	

get '/' do
	
	erb :index
end
get '/visit' do 
	erb :visit
end	

get '/contacts' do 
	erb :contacts
end

post '/visit' do 
	@username = params[:username]
	@phone = params[:phone]
	@datestamp = params[:datestamp]
	@barber = params[:barber]
	@color = params[:color]
end
