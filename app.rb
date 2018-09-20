require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  run! if app_file == $0

  post '/names' do
    p params
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :play
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    $player2.hit(10)
    @health1 = $player1.health
    @health2 = $player2.health
    erb :attack
  end
end
