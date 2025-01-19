# frozen_string_literal: true

class PostForm < ApplicationForm
  attr_accessor :title, :content, :post

  validates :title, presence: true
  validates :content, presence: true

  def initialize(attributes = {})
    @post = attributes[:post]
    super(attributes)
  end

  def save
    return false unless valid?

    @post ||= Post.new
    @post.assign_attributes(title: title, content: content)
    @post.save
  end
end
