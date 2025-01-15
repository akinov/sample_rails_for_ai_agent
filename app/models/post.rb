# frozen_string_literal: true

class Post < ApplicationRecord
  # @param datetime [DateTime] 比較する日時（デフォルト: 現在日時）
  # @return [Integer] 指定された日時とcreated_atとの時間差分
  def time_diff_from(datetime = DateTime.current)
    ((datetime - created_at) * 24).to_i
  end
end
