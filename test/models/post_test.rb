# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'hours_difference method' do
    post = Post.create!(title: 'Test Post', content: 'This is a test post', created_at: DateTime.now - 5.hours)

    assert_in_delta 5.0, post.hours_difference, 0.01
    assert_in_delta 3.0, post.hours_difference(DateTime.now - 2.hours), 0.01
    assert_in_delta 7.0, post.hours_difference(DateTime.now + 2.hours), 0.01
  end
end
