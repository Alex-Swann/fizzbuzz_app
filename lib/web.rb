require 'rubygems'
require 'sinatra'
require 'haml'

require_relative './fizzbuzz'


get '/' do
	haml :index
end

post '/fizzbuzz' do
	haml :fizzbuzz, :locals => {:fzbz => fizzbuzz(params[:number].to_i)}
end


# , :locals => {:some_object => fizzbuzz(3)}