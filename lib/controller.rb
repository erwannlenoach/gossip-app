require 'gossip'

class ApplicationController < Sinatra::Base
  	get '/' do
  	erb :index
  	end 
  	get '/gossips/new/' do
  	erb :new_gossip
  	end
  	post '/gossips/new/' do
  	Gossip.new(gossip_author, gossip_content)
  	Gossip.save
	end
end

