require 'rails_helper'

describe CheckTranslation do
  before do
    user = User.create(email: 'test@test.com', password: 'test')
    @test_card = FactoryGirl.create(:card, original: 'original', translated: 'translated', user: user)
  end

  it 'if words equal' do
    interactor = CheckTranslation.call(id: @test_card.id,original_word: ' original' )
    expect(interactor.notice).to eq('Верно!')
  end

  it 'if words not equal' do
    interactor = CheckTranslation.call(id: @test_card.id, original_word: ' OrGinal')
    expect(interactor.notice).to eq('Ошибка!')
  end
end
