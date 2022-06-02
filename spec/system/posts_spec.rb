require 'rails_helper'

describe '投稿機能', type: :system do
  describe '一覧表示機能' do
    let(:user) { FactoryBot.create(:user) }

    before do
      FactoryBot.create(:post, user: user)
      visit user_session_path
      fill_in 'メールアドレス', with: login_user.email
      fill_in 'パスワード', with: login_user.password
      click_button 'ログイン'
    end

    context 'ユーザがログインしているとき' do
      let(:login_user) { user }

      it 'ユーザが作成した投稿が表示される' do
        expect(page).to have_content '最初の投稿'
      end
    end
  end
end