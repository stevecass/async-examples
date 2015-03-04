require 'sinatra'

get '/' do
  File.read('index.html')
end
get '/timeout.html' do
  File.read('timeout.html')
end

get '/jq.html' do
  File.read('jq.html')
end

get '/value' do
  sleep rand(2..5)
  rand(100..1000).to_s
end