require 'rails_helper'

RSpec.feature 'コメント管理機能', type: :feature do
  describe 'コメント投稿機能'do
    before do
      user_admin = FactoryBot.create(:admin)
      @article = FactoryBot.create(:article,user: user_admin)
      # 管理者でログインする
      visit new_user_session_path
      fill_in 'Eメール',with: 'admin@example.com'
      fill_in 'パスワード',with: '123456'
      click_button 'ログインする'
    end
    
    context '内容（context）が入力されている場合'do 
      before do
        visit article_path(@article)
        fill_in 'タイトル（任意）',with: 'テストコメント'
        fill_in '内容（必須）',with: 'コメントを投稿'
        click_button '口コミを投稿する'
      end
      it 'フラッシュメッセージで「コメントが投稿されました。」と表示される' do 
        expect(page).to have_selector '.notice',
        text:'コメントが投稿されました。'
        save_and_open_page
      end
      it '記事内に投稿したコメントが表示される' do 
        expect(page).to have_content 'テストコメント'
        save_and_open_page
      end
      it 'コメント登録件数が１件増える' do 
        expect(Comment.count).to eq 1
        save_and_open_page
      end
    end
    
    context '内容（context）が入力されていない場合'do 
      before do
        visit article_path(@article)
        fill_in 'タイトル（任意）',with: 'テストコメント'
        fill_in '内容（必須）',with: ''
        click_button '口コミを投稿する'
      end
      it 'フラッシュメッセージで「内容を入力してください。」と表示される' do 
        expect(page).to have_selector '.alert',
        text:'内容を入力してください。'
        save_and_open_page
      end
      it '記事内に投稿したコメントが表示されない' do 
        expect(page).to have_no_content 'テストコメント'
        save_and_open_page
      end
      it 'コメント登録件数が0件' do 
        expect(Comment.count).to eq 0
        save_and_open_page
      end
    end
  end
  
  describe 'コメント削除機能'do
    before do
      user_admin = FactoryBot.create(:admin)
      FactoryBot.create(:user)
      @article = FactoryBot.create(:article,user: user_admin)
      @comment = FactoryBot.create(:comment,user: user_admin,article: @article)
    end
    
    context '管理者の場合'do 
      before do
        # 管理者でログインする
        visit new_user_session_path
        fill_in 'Eメール',with: 'admin@example.com'
        fill_in 'パスワード',with: '123456'
        click_button 'ログインする'
        visit article_path(@article)
        click_link '削除', href: article_comment_path(@article,@comment)
      end
      
      it '記事内からコメント(テストコメント)が削除される'do
        expect(page).to have_no_content'テストコメント'
        save_and_open_page
      end
      it 'コメント登録件数が0件' do 
        expect(Comment.count).to eq 0
        save_and_open_page
      end
    end
    
    context '一般ユーザーの場合'do 
      before do
        # 一般ユーザーでログインする
        visit new_user_session_path
        fill_in 'Eメール',with: 'tester@example.com'
        fill_in 'パスワード',with: '123456'
        click_button 'ログインする'
        visit article_path(@article)
      end
      it '削除リンクが表示されない' do 
        expect(page).to have_no_link '削除', href: article_comment_path(@article,@comment)
        save_and_open_page
      end
    end
  end
end
