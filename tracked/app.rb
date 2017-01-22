# myapp.rb
require 'sinatra'
require "sinatra/cookies"
require 'pp'

set :port, 1235

get '/' do
  File.read(File.join('views', 'index.html'))
end
