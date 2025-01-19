# frozen_string_literal: true

class Post < ApplicationRecord
  # Calculates the difference in hours between the created_at attribute and a given DateTime argument.
  # @param [DateTime] datetime The DateTime to compare with created_at. Defaults to the current DateTime.
  # @return [Float] The difference in hours.
  def hours_difference(datetime = DateTime.now)
    ((datetime - created_at.to_datetime) * 24).to_f
  end
end
