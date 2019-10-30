require "sinatra"
require "sinatra/base"
require "./lib/player"

class Battle < Sinatra::Base
  enable :sessions
  get "/" do
    erb :index
  end

  post "/names" do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect ("/play")
  end

  get "/play" do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    @player_hp = $player2.hp
    erb :play
  end

  get "/attack" do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    $player1.attack($player2)
    @player_hp = $player2.hp
    erb :play
  end

  run! if app_file == $0
end
