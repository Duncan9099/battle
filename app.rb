require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    $game = Game.new(@player1, @player2)
    $game.player1_attacks_player2
    erb :attack
  end

  get '/play' do
    @player1 = $player1
    @game = $game
    @player2 = $player2
    @p2_hp = 100
    erb :play
  end

  run! if app_file == $0
end
