require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game
    @p2_hp = @game.player1.hp
    erb :play
  end

  get '/attack' do
    @game
    @game.attack(@game.opponent)
    if @game.game_over?
      redirect '/game_over'
    else
      erb :attack
    end
  end

  get '/switch_turns' do
    @game
    @game.switch_turns
    redirect '/play'
  end

  get '/game_over' do
    @game
    erb :game_over
  end

  run! if app_file == $0
end
