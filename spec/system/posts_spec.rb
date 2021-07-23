require 'rails_helper'
describe 'タスク管理機能', type: :system do
  describe '一覧表示機能' do
    before do
      user_a = FactoryBot.create(:user)
      FactoryBot.create(:post, tax: 'テスト', title: '最初のタスク', user: user_a)
    end

    context 'ユーザAがログインしているとき' do
      before do
        visit user_session_path
        fill_in 'Email', with: 'test@example.com'
        fill_in 'Password', with: 'aaa111'
        click_button 'Log in'
      end

      it 'ユーザAが作成したタスクが表示される' do
        expect(page).to have_content '最初のタスク'
      end
    end
  end
end