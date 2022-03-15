class GamesController < ApplicationController

  # GET: /games
  get "/games" do
    games = Game.all
    # return a JSON response with an array of all the game data
    games.to_json
  end

 # POST: /games
  post "/games" do
    game= Game.create(
      score: params[:score],
      total_time: params[:total_time],
      user_id: params[:user_id]
    )
  game.to_json
  end

  # GET: /games/5
  get "/games/:id" do
    game = Game.find(params [:id])
    game.to_json
  end

   # PATCH: /games/5
  patch "/games/:id" do
    game = Game.find(params[:id])
    game.update(
      score: params[:score],
      total_time: params[:total_time],
      user_id: params[:user_id]
    )
    game.to_json
  end

  # DELETE: /games/5/delete
  delete "/games/:id/delete" do
    game = Game.find(params[:id])
    game.destroy
    game.to_json
  end
end
