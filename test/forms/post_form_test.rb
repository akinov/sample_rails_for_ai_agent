# frozen_string_literal: true

require 'test_helper'

class PostFormTest < ActiveSupport::TestCase
  def setup
    @post_form = PostForm.new(title: 'Test Title', content: 'Test Content')
  end

  test 'should be valid with valid attributes' do
    assert @post_form.valid?
  end

  test 'should be invalid without a title' do
    @post_form.title = nil
    assert_not @post_form.valid?
    assert_includes @post_form.errors[:title], "can't be blank"
  end

  test 'should be invalid without content' do
    @post_form.content = nil
    assert_not @post_form.valid?
    assert_includes @post_form.errors[:content], "can't be blank"
  end

  test 'should save post with valid attributes' do
    assert_difference('Post.count') do
      assert @post_form.save
    end
  end

  test 'should not save post with invalid attributes' do
    @post_form.title = nil
    assert_no_difference('Post.count') do
      assert_not @post_form.save
    end
  end
end
