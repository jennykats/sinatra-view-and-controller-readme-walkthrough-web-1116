require_relative 'config/environment'

class App < Sinatra::Base

  post '/reverse' do
    string = params["string"]
    @reversed_string = string.reverse
    erb :reversed
  end

  # post '/reverse' do
  #   erb :reversed
  # end

  get '/friends' do
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end
