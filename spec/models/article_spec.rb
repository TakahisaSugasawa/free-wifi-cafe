require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '記事投稿機能' do
    let(:user_admin) { FactoryBot.create(:admin) }

    context '店名が入力されていない場合' do
      before do
        @article = FactoryBot.build(:article, store_name: nil, user: user_admin)
        @article.valid?
      end
      it '記事投稿に失敗する' do
        expect(@article.errors.full_messages).to include('店名 が入力されていません。')
      end
    end

    context '店名が重複する場合' do
      before do
        FactoryBot.create(:article, user: user_admin)
        @article = FactoryBot.build(:article, user: user_admin)
        @article.valid?
      end
      it '記事投稿に失敗する' do
        expect(@article).not_to be_valid
      end
    end
  end
end
