class PublicController < ApplicationController
  def index
    @card = Card.belongs_to_current_user(current_user).time_to_check.random.first
    flash[:alert] = 'Нет свежих карточек' unless @card
  end
end
