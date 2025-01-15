# frozen_string_literal: true

class Post < ApplicationRecord
  # Returns the title if present, otherwise returns the first 20 characters of the content
  #
  # @return [String] the title or the first 20 characters of the content
  def title_or_content_preview
    title.present? ? title : content.to_s[0, 20]
  end
end
