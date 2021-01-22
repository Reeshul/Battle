require "sinatra/base"
require_relative "lib/player"
require_relative "lib/game"

class Battle < Sinatra::Base

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect "/play"
  end

  get "/play" do
    @player1 = $player1
    @player2 = $player2
    @attack = params[:attack]
    Game.new.attack(@player2) if @attack
    erb(:play)
  end

  run! if app_file == $0

end
