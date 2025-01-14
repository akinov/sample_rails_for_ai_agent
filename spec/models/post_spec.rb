require 'rails_helper'

RSpec.describe Post, type: :model do
  # ...existing code...

  describe '#hours_difference' do
    let(:post) { create(:post, created_at: 2.hours.ago) }

    it 'returns the difference in hours from the given datetime' do
      expect(post.hours_difference(DateTime.now)).to be_within(0.1).of(2.0)
    end

    it 'returns the difference in hours from the default datetime (now)' do
      expect(post.hours_difference).to be_within(0.1).of(2.0)
    end
  end
end
