class GamesController < ApplicationController

  def new
  end

  def create
    # ゲームを始めるときはin_progress
    game = Game.create!(status: 'in_progress')
    redirect_to new_game_progresses_path(game)
  end

  def giv_up
  end
end
