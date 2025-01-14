# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'hours_difference with default datetime' do
    post = Post.create(created_at: 2.hours.ago)
    assert_in_delta 2.0, post.hours_difference, 0.01
  end

  test 'hours_difference with specified datetime' do
    post = Post.create(created_at: 5.hours.ago)
    specified_time = 3.hours.ago
    assert_in_delta 2.0, post.hours_difference(specified_time), 0.01
  end
end
