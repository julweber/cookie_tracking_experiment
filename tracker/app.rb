# myapp.rb
require 'sinatra'
require "sinatra/cookies"
require 'pp'

disable :protection
set :port, 1234

def set_tracking_cookie
  if cookies[:tracking_id].nil?
    pp "Setting cookie tracking id!"
    cookies[:tracking_id] = 'myId'
  else
    pp "Found tracking cookie: #{cookies[:tracking_id]} !!!"
  end
end

def print_request_infos
  pp "Request Referrer: #{request.referrer}"
  pp "Cookies: #{cookies.to_a.join(" : ")}"
  pp "Cookie tracking id: #{cookies[:tracking_id]}"
end

get '/' do
  print_request_infos
  set_tracking_cookie
  File.read(File.join('views', 'index.html'))
end

get '/iframe' do
  print_request_infos
  set_tracking_cookie
  File.read(File.join('views', 'iframe.html'))
end
