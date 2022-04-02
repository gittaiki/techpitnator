class Progress < ApplicationRecord
  belongs_to :game
  belongs_to :question

  def assign_sequence
    next_sequence = 1
    if game.present?
      # ユーザーが何問目か取得
      all_progress = game.progresses
      if all_progress.count > 0
        # 質問回答数を1追加する
        next_sequence = all_progress.maximum(:sequence) + 1
      end
    end
    self.sequence = next_sequence
  end

  def positive_answer?
    # 回答ははい
    answer == 'positive'
  end

  def negative_answer?
    # 回答はいいえ
    answer == 'negative'
  end

end
