require 'rails_helper'

RSpec.describe Post, type: :model do
  # ...existing code...

  describe '#time_diff_from' do
    let(:post) { create(:post, created_at: '2023-01-01 12:00:00') }

    context '引数なしの場合' do
      it '現在時刻との時間差を返すこと' do
        travel_to '2023-01-02 12:00:00' do
          expect(post.time_diff_from).to eq 24
        end
      end
    end

    context '引数ありの場合' do
      it '指定した日時との時間差を返すこと' do
        expect(post.time_diff_from(DateTime.parse('2023-01-01 15:00:00'))).to eq 3
      end
    end
  end
end
