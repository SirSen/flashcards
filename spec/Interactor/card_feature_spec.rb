require 'capybara/rspec'

describe 'Create card', type: :feature do
  before :each do
    visit new_card_path
  end

  it 'Create valid card' do
    fill_in 'card_original', with: 'original'
    fill_in 'card_translated', with: 'translated'
    click_button 'Отправить'
    expect(page).to have_content 'Карточка создана'
  end

  it 'Create not valid card' do
    fill_in 'card_original', with: 'original'
    fill_in 'card_translated', with: ' original'
    click_button 'Отправить'
    expect(page).not_to have_content 'Карточка создана'
  end
end

describe 'The check translation process', type: :feature do
  before :each do
    Card.create(original: 'original', translated: 'translated')
    time = 4.days.since
    Time.stub(:now) { time }
    visit root_path
  end

  it 'Check translation Success' do
    fill_in 'Оригинал', with: 'original'
    click_button 'Отправить'
    expect(page).to have_content 'Верно!'
  end

  it 'Check translation Fail' do
    fill_in 'Оригинал', with: ' original23 '
    click_button 'Отправить'
    expect(page).to have_content 'Ошибка!'
  end
end
