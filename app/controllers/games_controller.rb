class GamesController < ApplicationController

  def new
  end

  def create
    # ゲームを始めるときはin_progress
    Game.create!(status: 'in_progress')
    render plain: "game started! Let's start next section."
  end
end
