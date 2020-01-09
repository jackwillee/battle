# frozen_string_literal: true

require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    @game.player_1? ? @game.attack(@game.player_2) : @game.attack(@game.player_1)
    redirect '/play_continued'
  end

  get '/play' do
    @game = $game
    
    erb(:play)
  end

  get '/play_continued' do
   @game = $game
    
    @game.player_1? ? @message = 'You attacked player 1' : @message = 'You attacked player 2'
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
