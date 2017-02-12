class PublicController < ApplicationController
  def index
    @card = Card.time_to_check.random.first
    flash[:notice] = "Нет свежих карточек" if !@card
  end
end
