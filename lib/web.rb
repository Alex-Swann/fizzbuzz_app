require 'rubygems'
require 'sinatra'
require 'haml'

require_relative './fizzbuzz'
set :public_folder, './public'

get '/' do
	haml :index
end

post '/fizzbuzz' do
	array = []
	1.upto(params[:number].to_i) do |num|
		array <<  fizzbuzz(num)
	end

	haml :fizzbuzz, :locals => {:fzbz => array}
end


get '/style.css' do
	sass :styles, :style => :expanded
end