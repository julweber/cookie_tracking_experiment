# myapp.rb
require 'sinatra'
require "sinatra/cookies"
require 'pp'

disable :protection
set :port, 1234


get '/' do
  pp cookies
  File.read(File.join('views', 'index.html'))
end

get '/iframe' do
  pp cookies[:tracking_id]
  cookies[:tracking_id] = 'myId' if cookies[:tracking_id].nil?

  pp cookies
  File.read(File.join('views', 'iframe.html'))
end
