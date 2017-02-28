class Card < ApplicationRecord
  mount_uploader :picture, PictureUploader

  belongs_to :user
  before_create :card_review_time_add

  validates :original, :translated, presence: true

  validate :original_translated_same

  scope :random, -> { order('random()') }
  scope :time_to_check, -> { where(['review < ?', Time.now + 3.days]) }
  scope :belongs_to_current_user, -> (current_user) { where(user_id: current_user.id) }

  private

  def card_review_time_add
    self.review = 3.days.since
  end

  def original_translated_same
    errors.add(:translated, 'Оригинал и перевод совпадают') if original.downcase.strip == translated.downcase.strip
  end
end
