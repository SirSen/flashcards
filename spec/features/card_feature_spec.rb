describe 'Card', type: :feature do
  context 'valid card' do
    before :each do
      visit new_card_path
    end

    # it 'create success' do ToDo: После переделывания view
    #   fill_in 'card_original', with: 'original'
    #   fill_in 'card_translated', with: 'translated'
    #   click_button 'Отправить'
    #   expect(page).to have_content 'Карточка создана'
    # end
    #
    # it 'create fails' do
    #   fill_in 'card_original', with: 'original'
    #   fill_in 'card_translated', with: ' original'
    #   click_button 'Отправить'
    #   expect(page).not_to have_content 'Карточка создана'
    # end
  end

  context 'check translation' do
    before :each do
      user = User.create(email: 'test@test.com', password: 'test')
      Card.create(original: 'original', translated: 'translated', user: user)
      Card.create(original: 'original', translated: 'translated', user: user)
      time = 4.days.since
      Time.stub(:now) { time }
      visit root_path
    end

    it 'process success' do
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
