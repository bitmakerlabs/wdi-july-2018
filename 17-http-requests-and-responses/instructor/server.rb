require 'sinatra'

# HTTP VERB (GET, POST, PATCH, DELETE)
# PATH (local part of the URL)
# ROUTE: VERB + PATH

get '/' do
  redirect to('/hello')
end

get '/hello' do
  # Do computations
  @time_now = Time.now

  @todo_list = [
    'Water the plants',
    'Feed the cat',
    'Call the parents',
    'Do homework',
    'Drink water'
  ]

  # Must be the last line
  #send_file 'views/hello.erb'

  # Must be the last line
  erb(:hello)
end

get '/goodbye' do
  'Goodbye!'
end
