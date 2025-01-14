# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'title_or_content_preview returns title if present' do
    post = Post.new(title: 'Sample Title', content: 'Sample content that is longer than twenty characters.')
    assert_equal 'Sample Title', post.title_or_content_preview
  end

  test 'title_or_content_preview returns first 20 characters of content if title is absent' do
    post = Post.new(content: 'Sample content that is longer than twenty characters.')
    assert_equal 'Sample content that ', post.title_or_content_preview
  end

  test 'title_or_content_preview returns empty string if both title and content are absent' do
    post = Post.new
    assert_equal '', post.title_or_content_preview
  end
end
