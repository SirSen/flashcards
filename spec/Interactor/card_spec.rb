require 'rails_helper'

describe Card do
  before do
    @test_card = FactoryGirl.create(:card, original: 'original', translated: 'translated')
  end

  it 'if words equal' do
    interactor = CheckTranslation.call(id: @test_card.id,original_word: ' original' )
    expect(interactor.notice).to eq('Верно!')
  end

  it 'if words not equal notice shall return error message' do
    interactor = CheckTranslation.call(id: @test_card.id, original_word: ' OrGinal')
    expect(interactor.notice).to eq('Ошибка!')
  end
end
