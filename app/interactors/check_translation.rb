class CheckTranslation
  include Interactor

  def call
    card = Card.find context.id
    if card.original.downcase.strip == context.original_word.downcase.strip
      card.update_review_date!
      context.notice = 'Верно!'
    else
      context.notice = 'Ошибка!'
    end
  end
end
