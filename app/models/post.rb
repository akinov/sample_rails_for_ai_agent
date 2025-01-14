# frozen_string_literal: true

class Post < ApplicationRecord
  # 指定されたDateTimeとcreated_atの時間差を時間単位で返すメソッド
  # @param [DateTime] datetime 比較する日時。デフォルトは現在の日時
  # @return [Float] created_atとの時間差
  def hours_difference(datetime = DateTime.now)
    ((datetime - created_at.to_datetime) * 24).to_f
  end
end
