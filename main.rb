require 'rubygems'
require 'sinatra'


use Rack::Session::Cookie, :key => 'rack.session',
														:path => '/',
														:secret => 'secret'

get '/home' do
	"welcome home"
end


get '/brad' do
	erb :brad
end

get '/nested_template' do
	erb :"/users/profile"
end

get '/nothere' do
	redirect '/brad'
end