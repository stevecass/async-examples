require 'sinatra'

get '/*.html' do |fname|
  fname += '.html'
  File.read(fname)
end

get '/' do
  File.read('promise.html')
end

get '/value' do
  sleep rand(2..5)
  rand(100..1000).to_s
end