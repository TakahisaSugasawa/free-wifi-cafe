require 'rails_helper'


RSpec.feature "Articles", type: :feature do
  describe '一覧表示機能' do
    before do
      # ユーザーAを作成しておく
        user_a = FactoryBot.create(:user,username: 'ユーザーA',email: 'a@example.com',password:'password',password_confirmation:'password')
      # 作成者がユーザーAである記事を作成しておく
      FactoryBot.create(:article,store_name: '最初のお店',user: user_a)
    end
    
    context 'ユーザーAがログインしている時' do
      before do
        # ユーザーAでログインする
        visit new_user_session_path
        fill_in 'Eメール',with: 'a@example.com'
        fill_in 'パスワード',with: 'password'
        click_button 'ログインする'
      end
      it 'ユーザーAが作成したタスクが表示される',open_on_error: true do
        # 作成済みの記事の名称が画面上に表示されていることを確認
        
        expect(page).to have_content '最初のお店'
      end
    end
  end
end

