# myapp.rb
require 'sinatra'
require "sinatra/cookies"
require 'pp'

set :port, 1235

get '/' do
  File.read(File.join('views', 'index.html'))
end

get '/superproduct' do
  File.read(File.join('views', 'superproduct.html'))
end

get '/superservice' do
  File.read(File.join('views', 'superservice.html'))
end
