require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect "/play"
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    @attack = params[:attack]
    @player1.attack(@player2) if @attack
    erb(:play)
  end



  run! if app_file == $0
end
