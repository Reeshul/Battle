require "sinatra/base"
require "./lib/player"
require "./lib/game"

class Battle < Sinatra::Base

  get "/" do
    erb(:index)
  end

  post "/names" do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    @attack_player_2 = params[:attack]
    @game.attack(@game.player2) if @attack_player_2
    erb(:play)
  end

  run! if app_file == $0

end
