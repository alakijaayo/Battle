require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  run! if app_file == $0

  post '/names' do
    p params
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    # @player1 = $player1.name
    # @player2 = $player2.name
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    # @player1 = $player1
    # @player2 = $player2
    # Game.new.attack(@player2)
    # $player2.hit
    # @health1 = $player1.health
    # @health2 = $player2.health
    erb :attack
  end
end
