class Card < ApplicationRecord
  before_create :card_review_time_add

  validates :original, :translated, presence: true

  validate :original_translated_same

  private

  def card_review_time_add
    self.review = Time.now + 3.days
  end

  def original_translated_same
    errors.add(:translated, 'Оригинал и перевод совпадают') unless original.downcase.strip != translated.downcase.strip
  end
end
