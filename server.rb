require 'pry'
require 'dotenv'
require 'sinatra'
require 'pusher'

Dotenv.load


set :pusher, Pusher::Client.new(
  app_id: ENV["PUSHER_ID"],
  key: ENV["PUSHER_KEY"],
  secret: ENV["PUSHER_SECRET"],
  encrypted: true
)

get '/' do
  erb :index
end

get '/demonstrator' do
  erb :demonstrator
end

post '/data' do
  settings.pusher.trigger('pusher-fun', 'data', {
    x: params[:x], y: params[:y]
  })
end