require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    # @player1 = $player1
    # @player2 = $player2
    @game = $game
    @p2_hp = 100
    erb :play
  end

  get '/attack' do
    # @player1 = $player1
    # @player2 = $player2
    @game = $game
    @game.attack(@game.player2)
    @game.switch_turns
    erb :attack
  end



  run! if app_file == $0
end
