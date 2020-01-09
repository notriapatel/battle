require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do 
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    @game.player_1
    @game.player_2
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.player_1
    @game.player_2
    $game.attack(@game.player_2)
    erb :attack
  end

  run! if app_file == $0
end
