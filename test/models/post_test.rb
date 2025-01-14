# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'should return correct hours difference' do
    post = Post.create!(created_at: 2.hours.ago)
    assert_in_delta 2.0, post.hours_difference, 0.01

    custom_time = DateTime.now - 3.hours
    assert_in_delta 1.0, post.hours_difference(custom_time), 0.01
  end
end
