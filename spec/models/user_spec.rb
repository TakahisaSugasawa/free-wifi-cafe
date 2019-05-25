require 'rails_helper'

RSpec.describe 'デバイス機能',User, type: :model do
  describe 'ユーザー登録'do
    context 'ユーザー名が入力されていない場合'do 
      before do
        @user = FactoryBot.build(:user, username: nil)
        @user.valid?
      end
      it 'ユーザー登録に失敗する'do 
        expect(@user.errors.full_messages).to include("ユーザー名 が入力されていません。")
      end
    end
    
    context 'Eメールが入力されていない場合'do 
      before do
        @user = FactoryBot.build(:user, email: nil)
        @user.valid?
      end
      it 'ユーザー登録に失敗する'do 
        expect(@user.errors.full_messages).to include("Eメール が入力されていません。")
      end
    end
    
    context 'Eメールが重複する場合'do 
      before do
        FactoryBot.create(:user)
        @user = FactoryBot.build(:user,email: "tester@example.com")
        @user.valid?
      end
      it 'ユーザー登録に失敗する'do 
        expect(@user.errors.full_messages).to include("Eメール は既に使用されています。")
      end
    end
    
    context 'パスワードが5文字の場合'do 
      before do
        @user = FactoryBot.build(:user,password: "12345")
        @user.valid?
      end
      it 'ユーザー登録に失敗する'do 
        expect(@user.errors.full_messages).to include("パスワード は6文字以上に設定して下さい。")
      end
    end
    
    context 'パスワードが6文字の場合'do 
      before do
        @user = FactoryBot.build(:user,password: "123456")
        @user.valid?
      end
      it 'ユーザー登録に成功する'do 
        expect(@user).to be_valid
      end
    end
    
    context 'パスワードが7文字の場合'do 
      before do
        @user = FactoryBot.build(:user,password: "1234567")
        @user.valid?
      end
      it 'ユーザー登録に成功する'do 
        expect(@user).to be_valid
      end
    end
  end
 
  describe 'ユーザー削除機能' do
    before do
      @user = FactoryBot.create(:user)
      @user.destroy
    end
    it '登録件数が0のまま' do 
      expect(User.count).to eq 0
    end
  end
end



  # # ユーザー名、メール、パスワード、パスワード （確認）があれば有効な状態であること
  # it "is valid with an username, email, password,and password_confirmation" do
  # user = User.new(
  #   username: "hogehoge",
  #   email: "tester@example.com",
  #   password: "test123456",
  #   password_confirmation: "test123456"
  #   )
  #   expect(user).to be_valid
  # end
 
 
  # # Eメールがなければ無効な状態であること
  # it "is invalid without an email" do
  # # user = User.new(email: nil)
  # user = FactoryBot.build(:user, email: nil)
  # user.valid?
  # expect(user.errors.full_messages).to include("Eメール が入力されていません。")
  # end
 
  # # 重複したメールアドレスなら無効な状態であること
  # it "is invalid with a duplicate email" do
  # # User.create(
  # #   username: "hogehoge",
  # #   email: "tester@example.com",
  # #   password: "test123456",
  # #   password_confirmation: "test123456"
  # #   )
  # FactoryBot.create(:user,email: "tester@example.com")
  # # user = User.new(
  # #   username: "hogehoge",
  # #   email: "tester@example.com",
  # #   password: "test123456",
  # #   password_confirmation: "test123456"
  # #  )
  # user = FactoryBot.build(:user,email: "tester@example.com")
  # user.valid?
  # expect(user.errors.full_messages).to include("Eメール は既に使用されています。")
  # end
 