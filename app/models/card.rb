class Card < ApplicationRecord
  before_create :card_review_time_add

  validates :original, :translated, presence: true

  validate :original_translated_same

  scope :random, -> { order('random()') }
  scope :time_to_check, -> { where(['review < ?', Time.now]) }

  def update_review_date!
    update_columns(review: DateTime.now + 3.days)
  end

  private

  def card_review_time_add
    self.review = Time.now + 3.days
  end

  def original_translated_same
    errors.add(:translated, 'Оригинал и перевод совпадают') if original.downcase.strip == translated.downcase.strip
  end
end
