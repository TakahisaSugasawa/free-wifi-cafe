require 'rails_helper'

RSpec.feature '記事管理機能', type: :feature do
  let(:user_admin)  { FactoryBot.create(:admin) }
  let(:user)  { FactoryBot.create(:user) }
  let(:article) { FactoryBot.create(:article,user: user_admin) }
  
  describe '記事投稿機能' do
    
    before do
      visit new_user_session_path
      fill_in 'Eメール',with: user_admin.email
      fill_in 'パスワード',with: user_admin.password
      click_button 'ログインする'
    end
    
    context '管理者権限で記事を入力' do
      
      before do
        visit new_article_path
        fill_in '店名',with: 'テストカフェ'
        fill_in '住所',with: '住所１'
        select '千代田区', from: 'エリア'
        fill_in 'WI-FI',with: 'あり'
        fill_in 'コンセント',with: 'あり'
        fill_in '営業時間',with: '10時から22時まで'
        fill_in '定休日',with: '毎週火曜日'
        fill_in '電話番号',with: '03-xxxx-xxxx'
        fill_in 'URL',with: 'test.com'
        click_button '登録する'
        visit articles_path
      end
      
      it '記事が1つ増える'do
        expect(Article.count).to eq 1
        save_and_open_page
      end
    end
  end
  
  describe '記事一覧表示機能' do
    before do
      FactoryBot.create(:article,user: user_admin)
    end
    
    shared_examples_for '詳細リンクが表示される' do
      it { 
        expect(page).to have_content '詳細'
        save_and_open_page
      }
    end
    
    context '管理者が記事一覧表示画面にアクセスした時' do
      before do
        # 管理者でログインする
        visit new_user_session_path
        fill_in 'Eメール',with: user_admin.email
        fill_in 'パスワード',with: user_admin.password
        click_button 'ログインする'
        visit articles_path
      end
      
      it_behaves_like '詳細リンクが表示される'
      
      it '編集リンクが表示される' do
        expect(page).to have_content '編集'
        save_and_open_page
      end
      
      it '削除リンクが表示される' do
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
        visit articles_path
      end
      
      it_behaves_like '詳細リンクが表示される'
      
    end
    
    context 'ログインしていない一般ユーザが記事一覧表示画面にアクセスした時' do
      before do
        visit articles_path
      end
      
      it_behaves_like '詳細リンクが表示される'
      
    end
  end
  
  describe '記事詳細機能'do 
    
    shared_examples_for 'コメント入力フォームが表示される' do
      it {
        expect(page).to have_selector '.new_comment'
        save_and_open_page
      }
    end
    
    shared_examples_for 'いいねボタンが表示される' do
      it {
        expect(page).to have_selector 'form button span',
        text: 'お気に入りに追加する'
      }
    end
    
    context '管理者が記事詳細画面にアクセスした時' do
      before do
        # 管理者でログインする
        visit new_user_session_path
        fill_in 'Eメール',with: user_admin.email
        fill_in 'パスワード',with: user_admin.password
        click_button 'ログインする'
        visit  article_path(article)
      end
      
      it_behaves_like 'コメント入力フォームが表示される'
      
      it_behaves_like 'いいねボタンが表示される'
      
    end
    
    context 'ログイン済みの一般ユーザーが記事詳細画面にアクセスした時' do
      before do
        # 一般ユーザーでログインする
        visit new_user_session_path
        fill_in 'Eメール',with: user.email
        fill_in 'パスワード',with: user.password
        click_button 'ログインする'
        visit  article_path(article)
      end
      
      it_behaves_like 'コメント入力フォームが表示される'
      
      it_behaves_like 'いいねボタンが表示される'

    end
    
    context 'ログインしていない一般ユーザが記事一覧表示画面にアクセスした時' do
      before do
        visit  article_path(article)
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
      visit new_user_session_path
      fill_in 'Eメール',with: user_admin.email
      fill_in 'パスワード',with: user_admin.password
      click_button 'ログインする'
    end
    
    context '店名に値が入力されている場合'do 
      before do
        visit edit_article_path(article)
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
        visit edit_article_path(article)
        fill_in '店名',with: ''
        click_button '更新する'
      end
      
      it 'フラッシュメッセージ「記事の更新に失敗しました。」と表示される' do 
        expect(page).to have_selector '.alert',
        text:'記事の更新に失敗しました。'
        save_and_open_page
      end
      it '店名が更新されず、既存の店名（テストカフェ）のままでいる'do 
        expect(page).to have_field '店名', with: 'テストカフェ'
        save_and_open_page
      end
    end
  end
  
  describe '記事削除機能'do
    before do
      @article = FactoryBot.create(:article,user: user_admin)
      visit new_user_session_path
      fill_in 'Eメール',with: user_admin.email
      fill_in 'パスワード',with: user_admin.password
      click_button 'ログインする'
    end
    
    context '記事を削除する'do 
      before do
        visit articles_path
        click_link '削除', href: article_path(@article)
      end
      it 'フラッシュメッセージに「記事を削除しました」と表示される' do 
        expect(page).to have_selector '.notice',
        text:'記事を削除しました。'
        save_and_open_page
      end
      it '記事一覧画面から該当の記事が削除されている' do 
        expect(page).to have_no_link 'テストカフェ'
        save_and_open_page
      end
      
      it '記事表示件数が0件減っている' do 
        expect(Article.count).to eq 0 
      end
    end
  end
  
end

