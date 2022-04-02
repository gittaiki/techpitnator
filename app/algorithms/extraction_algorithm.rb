class ExtractionAlgorithm
  # インスタンス変数の読み取り専用のメソッド
  attr_reader :game
  attr_reader :query

  def initialize(game)
    Rails.logger.debug('ExtractionAlgorithm initialized.')
    @game = game
    @query = Comic.all
  end

  def compute
    # これまでに回答したデータを取得
    progresses = @game.progresses
    progresses.each do |progress|
      # question
      question = progress.question

      # =============================================
      # ここに絞り込み処理を実装予定
      # =============================================

      Rails.logger.debug('On the way query is ' + @query.to_sql.to_s)
      Rails.logger.debug('On the way comics are ' + @query.pluck(:title).to_a.to_s)
    end
    @query
  end
end
