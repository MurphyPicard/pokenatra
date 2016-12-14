require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'active_record'

#load the file to connect to the db
require_relative './db/connection'

#controllers
# require 'controllers/poke'

#model so we know the pokemon class, even if nothing special yet
require_relative "models/pokemon"

get '/' do
  erb :home
end

get '/all' do
  @pokemons = Pokemon.all
  erb :compliment
# binding.pry
end

get '/pokemon/:name' do

end
