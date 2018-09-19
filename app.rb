require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  run! if app_file == $0

  post '/names' do
    p params
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :play
  end
end
