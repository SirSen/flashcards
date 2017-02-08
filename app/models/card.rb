class Card < ApplicationRecord

  before_create :card_review_time_add

  validates_presence_of :original
  validates_presence_of :translated


  private

    def card_review_time_add
      self.review = Time.now + 3.days
    end

end
