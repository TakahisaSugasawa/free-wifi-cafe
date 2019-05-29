require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "コメント投稿機能" do
    let(:user_admin) { FactoryBot.create(:admin) }

    context "内容が入力されていない場合" do
      before do
        @article = FactoryBot.create(:article, user: user_admin)
        @comment = @article.comments.build(content: nil)
        @comment.valid?
      end
      it "コメント投稿に失敗する" do
        expect(@comment.errors.full_messages).to include("内容 が入力されていません。")
      end

      it "コメント登録件数が0件" do
        expect(Comment.count).to eq 0
      end
    end
  end
end
