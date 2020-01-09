require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    @player_1_name = $player_1.show_name
    @player_2_name = $player_2.show_name
    redirect '/play'
  end

  get '/attack' do
    session[:turn] = session[:turn] + 1
    (session[:turn])%2 == 1 ? session[:player_1_HP] = session[:player_1_HP] - 10 : session[:player_2_HP] = session[:player_2_HP] - 10
    redirect '/play_continued'
  end

  get '/play' do 
    @player_1_name = $player_1.show_name
    @player_2_name = $player_2.show_name
    session[:turn] = 1
    session[:player_1_HP] = 60
    session[:player_2_HP] = 60
    @player_1_HP = session[:player_1_HP]
    @player_2_HP = session[:player_2_HP]
    erb(:play)
  end

  get '/play_continued' do 
    @player_1_name = $player_1.show_name
    @player_2_name = $player_2.show_name
    @player_1_HP = session[:player_1_HP]
    @player_2_HP = session[:player_2_HP]
    if session[:turn]>1
      (session[:turn])%2 == 1 ? @message = "You attacked player 1" : @message = "You attacked player 2"
    end
    erb(:play)
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0

end