# frozen_string_literal: true

class Post < ApplicationRecord
  # 指定されたDateTimeとcreated_atの時間差を返します
  # @param [DateTime] datetime 比較する日時、デフォルトは現在日時
  # @return [Float] 時間差（時間単位）
  def hours_difference(datetime = DateTime.now)
    ((datetime - created_at.to_datetime) * 24).to_f
  end
end
