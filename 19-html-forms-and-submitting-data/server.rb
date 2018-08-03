require './film.rb'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

get '/films' do
  "GET request: #{params}"
end

post '/films' do
  Film.create(title: params[:title],
              description: params[:description],
              rating: params[:rating],
              country: params[:country],
              available: params[:available]
  )
  # send a new GET request to '/'
  redirect to("/")
end

put '/films' do
  "PUT request: #{params}"
end

delete '/films' do
  "DELETE request: #{params}"
end







