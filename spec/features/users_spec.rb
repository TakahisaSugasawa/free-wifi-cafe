require 'rails_helper'


RSpec.feature "デバイス機能", type: :feature do
  describe 'ユーザー登録機能 ' do
    # before do
      # ユーザーAを作成しておく
      #   user_a = FactoryBot.create(:user,username: 'ユーザーA',email: 'a@example.com',password:'password',password_confirmation:'password')
      # # 作成者がユーザーAである記事を作成しておく
      # FactoryBot.create(:article,store_name: '最初のお店',user: user_a)
    # end
    
    context 'テストユーザーで新規登録が成功するケース(パスワードは６文字)' do
      before do
        # テストユーザーで新規登録する
        visit new_user_registration_path
        fill_in 'ユーザー名',with: 'テストユーザー'
        fill_in 'Eメール',with: 'test@example.com'
        fill_in 'パスワード',with: '123456'
        fill_in 'パスワード（確認用）',with: '123456'
        click_button '登録する'
      end
      it 'ログイン先のページに遷移する',open_on_error: true do
        # 作成済みの記事の名称が画面上に表示されていることを確認
        expect(page).to have_selector '.notice',
        text: 'アカウント登録が完了しました。'
        visit root_path
        save_and_open_page
      end
    end
    
    context '新規登録が失敗するケース' do
      before do
        # ユーザーAでログインする
        visit new_user_registration_path
        fill_in 'ユーザー名',with: ''
        fill_in 'Eメール',with: ''
        fill_in 'パスワード',with: ''
        fill_in 'パスワード（確認用）',with: ''
        click_button '登録する'
      end
      it '再度、新規登録フォームが表示される',open_on_error: true do
        # 作成済みの記事の名称が画面上に表示されていることを確認
        expect(page).to have_selector '#error_explanation ul li',
        text: 'Eメール が入力されていません。'
        text:'パスワード が入力されていません。'
        text:'ユーザー名 が入力されていません。'
        save_and_open_page
      end
    end
    
    context 'パスワードが５文字以下の時は登録失敗する' do
      before do
        visit new_user_registration_path
        fill_in 'ユーザー名',with: 'テストユーザー'
        fill_in 'Eメール',with: 'test@example.com'
        fill_in 'パスワード',with: '12345'
        fill_in 'パスワード（確認用）',with: '12345'
        click_button '登録する'
      end
      it '再度、新規登録フォームが表示される',open_on_error: true do
        # 作成済みの記事の名称が画面上に表示されていることを確認
        expect(page).to have_selector '#error_explanation ul li',
        text:'パスワード は6文字以上に設定して下さい。'
        save_and_open_page
      end
    end
    
    context 'パスワードが６文字以上の時は登録成功する' do
      before do
        visit new_user_registration_path
        fill_in 'ユーザー名',with: 'テストユーザー'
        fill_in 'Eメール',with: 'test@example.com'
        fill_in 'パスワード',with: '1234567'
        fill_in 'パスワード（確認用）',with: '1234567'
        click_button '登録する'
      end
      it 'アカウント登録が完了いたしましたと',open_on_error: true do
        expect(page).to have_selector '.notice',
        text: 'アカウント登録が完了しました。'
        visit root_path
        save_and_open_page
      end
    end
    
  end
  
  describe 'ユーザーログイン機能' do
    before do
      # ユーザー'takahisa'を作成しておく
        FactoryBot.create(:user)
      # ユーザー'takahisa'を作成しておく
        FactoryBot.create(:admin)
    end
    
    context 'メールアドレスとパスワードが一致する時、ログインに成功する' do
      it 'ログインに成功する',open_on_error: true do
        # 作成済みの記事の名称が画面上に表示されていることを確認
        visit new_user_session_path
        fill_in 'Eメール',with: 'tester@example.com'
        fill_in 'パスワード',with: '123456'
        click_button 'ログインする'
        expect(page).to have_selector '.notice',
        text: 'ログインしました。'
        visit root_path
        save_and_open_page
      end
    end
    
    context 'メールアドレスとパスワードが一致しない時、ログインに失敗する' do
      it 'ログインに失敗する',open_on_error: true do
        # 作成済みの記事の名称が画面上に表示されていることを確認
        visit new_user_session_path
        fill_in 'Eメール',with: 'tester@example.com'
        fill_in 'パスワード',with: 'hogehoge'
        click_button 'ログインする'
        expect(page).to have_selector '.alert',
        text: 'Eメールまたはパスワードが違います。'
        visit new_user_session_path
        save_and_open_page
      end
    end
    
    context '管理者権限があるユーザーがログイン' do
      it '管理者画面リンクが表示される',open_on_error: true do
        # 作成済みの記事の名称が画面上に表示されていることを確認
        visit new_user_session_path
        fill_in 'Eメール',with: 'admin@example.com'
        fill_in 'パスワード',with: '123456'
        click_button 'ログインする'
        expect(page).to have_content '管理者画面'
        save_and_open_page
      end
    end
    
  end
  describe 'ユーザー編集機能' do
    # 編集ページに行く前にログイン
    before do
      @test_user = FactoryBot.create(:user)
      visit new_user_session_path
      fill_in 'Eメール',with: 'tester@example.com'
      fill_in 'パスワード',with: '123456'
      click_button 'ログインする'
      visit edit_user_registration_path(@test_user)
    end
          
    context 'ユーザー名、Eメール、自己紹介、パスワードを更新する'do
      it '更新が成功する',open_on_error: true do
        fill_in 'ユーザー名',with: 'sugasawa'
        fill_in 'Eメール',with: 'test_update@example.com'
        fill_in '自己紹介',with: 'よろしくお願いします。'
        fill_in 'パスワード',with: 'abcdefg'
        fill_in 'パスワード（確認用）',with: 'abcdefg'
        fill_in '現在のパスワード',with: '123456'
        click_button '更新する'
        expect(@test_user.reload.username).to eq 'sugasawa'
        expect(@test_user.reload.email).to eq 'test_update@example.com'
        expect(@test_user.reload.self_introduction).to eq 'よろしくお願いします。'
        save_and_open_page
      end
    end
    
    context '現在のパスワードを未入力にして更新する' do
      it '更新に失敗する',open_on_error: true do
        fill_in 'ユーザー名',with: 'sugasawa'
        fill_in 'Eメール',with: 'test_update@example.com'
        fill_in '自己紹介',with: 'よろしくお願いします。'
        fill_in 'パスワード',with: 'abcdefg'
        fill_in 'パスワード（確認用）',with: 'abcdefg'
        fill_in '現在のパスワード',with: ''
        click_button '更新する'
        expect(@test_user.reload.username).not_to eq 'sugasawa'
        expect(@test_user.reload.email).not_to eq 'test_update@example.com'
        expect(@test_user.reload.self_introduction).not_to eq 'よろしくお願いします。'
        expect(page).to have_selector '#error_explanation ul li',
        text: '現在のパスワード が入力されていません。'
        save_and_open_page
      end
    end
    
  end
end

