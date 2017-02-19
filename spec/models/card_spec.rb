require 'rails_helper'

describe Card do

  context 'before saved' do
    it 'check that translation and original not same' do
      subject.original = 'Blop'
      subject.translated = ' blop '

      expect(subject).not_to be_valid
    end
  end

  context 'creating' do
    it 'add 3 dyas' do
      subject.run_callbacks :create

      expect(subject.review.strftime('%d-%m-%Y')).to eq(3.days.since.strftime('%d-%m-%Y'))
    end
  end

  context 'scope' do
    it 'get cards that review less then now' do
      cards = Card.time_to_check

      cards.each do |card|
        expect(card.review).to < Time.now
      end
    end
  end

end
