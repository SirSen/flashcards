class PublicController < ApplicationController
  def index
    @card = Card.time_to_check.random.first
    if !@card
      flash[:notice] = "Нет свежих карточек"
    end
  end
end
