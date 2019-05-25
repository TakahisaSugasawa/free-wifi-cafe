require 'rails_helper'

RSpec.feature "お気に入り管理機能", type: :feature do
  describe 'お気に入り登録'do
    before do
      user_admin = FactoryBot.create(:admin)
      @article = FactoryBot.create(:article,user: user_admin)
      # 管理者でログインする
      visit new_user_session_path
      fill_in 'Eメール',with: user_admin.email
      fill_in 'パスワード',with: user_admin.password
      click_button 'ログインする'
    end
    
    context 'お気に入りボタンを押下した時' do 
      before do
        visit article_path(@article)
        # click_button 'お気に入りに追加する'
      end
      it 'ボタンが「お気に入りを外す」に切り替わる'do 
        # expect(page).to have_button 'お気に入りを外す'
        expect {
        find('.favorite').click
        }.to change(Favorite, :count).by(1)
        save_and_open_page
      end
    end
  end
  
  describe 'お気に入り削除'do
    before do
      # user_admin = FactoryBot.create(:admin)
      # article = FactoryBot.create(:article,user: user_admin)
      # # 管理者でログインする
      # visit new_user_session_path
      # fill_in 'Eメール',with: 'admin@example.com'
      # fill_in 'パスワード',with: '123456'
      # click_button 'ログインする'
      # visit article_path(article)
      # click_button 'お気に入りに追加する'
    end
    
    context do 
      before do
      
      end
      it do 
      
      end
    end
  end
  
end
