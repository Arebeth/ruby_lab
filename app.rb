require 'sinatra'
require 'sinatra/reloader'

require './greeter'

# before filter
before do
  @greeter = Greeter.new
end

# our application's routes
get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
  @greeter.quote params[:tag]
end

# default /quote route
get '/quote' do
  @greeter.quote
end
