require 'rails_helper'


RSpec.feature "記事管理機能", type: :feature do
  
  describe '記事投稿機能' do
    before do
      # user_admin =
      FactoryBot.create(:admin)
      # 管理者でログインする
      visit new_user_session_path
      fill_in 'Eメール',with: 'admin@example.com'
      fill_in 'パスワード',with: '123456'
      click_button 'ログインする'
      # FactoryBot.create(:article,user: user_admin)
    end
    
    context "管理者権限で記事を入力" do
      before do
        visit new_article_path
        fill_in '店名',with: 'テストカフェ'
        fill_in '住所',with: '住所１'
        # エリア
        select '千代田区', from: 'エリア'
        fill_in 'WI-FI',with: 'あり'
        fill_in 'コンセント',with: 'あり'
        fill_in '営業時間',with: '10時から22時まで'
        fill_in '定休日',with: '毎週火曜日'
        fill_in '電話番号',with: '03-xxxx-xxxx'
        fill_in 'URL',with: 'test.com'
        click_button '登録する'
      end
      
      it '記事一覧ページで投稿した記事が表示される',open_on_error: true do
        visit articles_path
        expect(page).to have_content '検索結果：1件'
        # 検索結果数が1つ増えたことで投稿が成功したと表現したい
        save_and_open_page
      end
    end
  end
  
  describe '一覧表示機能' do
    before do
      # ユーザーAを作成しておく
      user_admin =FactoryBot.create(:admin)
      FactoryBot.create(:user)
      FactoryBot.create(:article,user: user_admin)
    end
    
    context '管理者が記事一覧表示画面にアクセスした時' do
      before do
        # 管理者でログインする
        visit new_user_session_path
        fill_in 'Eメール',with: 'admin@example.com'
        fill_in 'パスワード',with: '123456'
        click_button 'ログインする'
      end
      
      it '詳細・編集・削除リンクとお気に入り数が表示される',open_on_error: true do
        visit articles_path
        expect(page).to have_content '詳細'
        expect(page).to have_content '編集'
        expect(page).to have_content '削除'
        save_and_open_page
      end
    end
    
    context 'ログイン済みの一般ユーザーが記事一覧表示画面にアクセスした時' do
      before do
        # 一般ユーザーでログインする
        visit new_user_session_path
        fill_in 'Eメール',with: 'tester@example.com'
        fill_in 'パスワード',with: '123456'
        click_button 'ログインする'
      end
      
      it '詳細リンクとお気に入り数が表示される',open_on_error: true do
        # 作成済みの記事の名称が画面上に表示されていることを確認
        visit articles_path
        expect(page).to have_content '詳細'
        # expect(page).to have_content ''
      end
    end
    
    context 'ログインしていない一般ユーザが記事一覧表示画面にアクセスした時' do
      
      it '削除リンクのみ表示される',open_on_error: true do
        # 作成済みの記事の名称が画面上に表示されていることを確認
        visit articles_path
        expect(page).to have_content '詳細'
      end
    end
  end
  
  describe '記事詳細機能'do 
    before do
      user_admin =FactoryBot.create(:admin)
      FactoryBot.create(:user)
      @article = FactoryBot.create(:article,user: user_admin)
    end
    
    context '管理者が記事詳細画面にアクセスした時' do
      before do
        # 管理者でログインする
        visit new_user_session_path
        fill_in 'Eメール',with: 'admin@example.com'
        fill_in 'パスワード',with: '123456'
        click_button 'ログインする'
        visit  article_path(@article)
      end
      
      it 'コメント入力フォームが表示される'do
        expect(page).to have_selector '.new_comment'
        save_and_open_page
      end
      
      it 'いいねボタンが表示される'do
        expect(page).to have_selector 'form button span',
        text: 'お気に入りに追加する'
      end
    end
    
    context 'ログイン済みの一般ユーザーが記事詳細画面にアクセスした時' do
      before do
        # 一般ユーザーでログインする
        visit new_user_session_path
        fill_in 'Eメール',with: 'tester@example.com'
        fill_in 'パスワード',with: '123456'
        click_button 'ログインする'
        visit  article_path(@article)
      end
      
      it 'コメント入力フォームが表示される'do
        expect(page).to have_selector '.new_comment'
        save_and_open_page
      end
      
      it 'いいねボタンが表示される'do
        expect(page).to have_selector 'form button span',
        text: 'お気に入りに追加する'
      end
    end
    
    context 'ログインしていない一般ユーザが記事一覧表示画面にアクセスした時' do
      before do
        visit  article_path(@article)
      end
      
      it 'コメント入力フォームが表示されない' do
        expect(page).to have_no_selector '.new_comment'
        save_and_open_page
      end
      
      it 'いいねボタンが表示されない' do
        expect(page).to have_no_selector 'form button span',
        text: 'お気に入りに追加する'
      end
      
      it '会員登録して口コミを見る！ボタンが表示される' do
        expect(page).to have_selector '.button_to input' #会員登録して口コミを見る！ボタンがあることを示す
        save_and_open_page
      end
    end
  end
  
  describe '記事編集機能'do
    before do
      user_admin =FactoryBot.create(:admin)
      @article = FactoryBot.create(:article,user: user_admin)
      visit new_user_session_path
      fill_in 'Eメール',with: 'admin@example.com'
      fill_in 'パスワード',with: '123456'
      click_button 'ログインする'
    end
    
    context '店名に値が入力されている場合'do 
      before do
        visit edit_article_path(@article)
        fill_in '店名',with: 'テストショップ'
        click_button '更新する'
      end
      it 'フラッシュメッセージ「記事を更新しました。」と表示される'do 
        expect(page).to have_selector '.notice',
        text:'記事を更新しました。'
        save_and_open_page
      end
      it '店名がテストショップに更新されている'do 
        expect(page).to have_content 'テストショップ'
        save_and_open_page
      end
    end
    
    context '店名が空の場合'do 
      before do
        visit edit_article_path(@article)
        fill_in '店名',with: ''
        click_button '更新する'
      end
      
      it 'フラッシュメッセージ「記事の更新に失敗しました。」と表示される'do 
        expect(page).to have_selector '.alert',
        text:'記事の更新に失敗しました。'
        save_and_open_page
      end
      it '店名が更新されず、既存の店名（テストカフェ）のままでいる'do 
        expect(page).to have_content 'テストカフェ'
        save_and_open_page
      end
    end
  end
  
  describe '記事削除機能'do
    before do
      user_admin =FactoryBot.create(:admin)
      @article = FactoryBot.create(:article,user: user_admin)
      visit new_user_session_path
      fill_in 'Eメール',with: 'admin@example.com'
      fill_in 'パスワード',with: '123456'
      click_button 'ログインする'
    end
    
    context '記事を削除する'do 
      before do
        visit articles_path
        click_link '削除'
      end
      it do 
      
      end
    end
  end
  
end

