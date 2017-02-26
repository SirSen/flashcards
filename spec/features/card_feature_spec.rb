require "helpers/helpers_authentication"

describe 'Card', type: :feature do
  context 'valid card' do
    before :each do
      @user = create(:user)
      login(@user)
      visit new_card_path
    end

    it 'create success' do
      fill_in 'card_original', with: 'original'
      fill_in 'card_translated', with: 'translated'
      click_button 'Отправить'
      expect(page).to have_content 'Карточка создана'
    end

    it 'create fails' do
      fill_in 'card_original', with: 'original'
      fill_in 'card_translated', with: ' original'
      click_button 'Отправить'
      expect(page).not_to have_content 'Карточка создана'
    end
  end

  context 'check translation' do
    before :each do
      @user = create(:user)
      login(@user)
      create(:card,user: @user)
      create(:card,user: @user)
      time = 4.days.since
      Time.stub(:now) { time }
      visit root_path
    end

    it 'process success' do
      puts page
      fill_in 'Оригинал', with: 'original'
      click_button 'Отправить'
      expect(page).to have_content 'Верно'
    end

    it 'process fail' do
      fill_in 'Оригинал', with: ' original23 '
      click_button 'Отправить'
      expect(page).to have_content 'Ошибка!'
    end
  end
end

def login(user)
  visit login_path
  fill_in 'Email', with: user.email
  fill_in 'Password', with: '1234567890'
  click_button 'Войти'
  puts page.html
end
