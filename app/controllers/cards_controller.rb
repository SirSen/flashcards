class CardsController < ApplicationController
  before_action :card_find, only: [:edit, :update, :destroy, :check_translation]
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(cards_params)
    if @card.save
      flash[:notice] = 'Карточка создана'
      redirect_to(cards_path)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @card.update_attributes(cards_params)
      flash[:notice] = 'Карточка обновлена'
      redirect_to(cards_path)
    else
      render :edit
    end
  end

  def destroy
    flash[:notice] = if @card.destroy
                       'Карточка удалена'
                     else
                       'Карточку удалить не удалось'
                     end
    redirect_to cards_path
  end

  def check
    result = CheckTranslation.call id: params[:id], original_word: params[:other][:original_word]
    flash[:notice] = result.notice
    redirect_to root_path
  end

  private

  def cards_params
    params.require(:card).permit(:original, :translated)
  end

  def card_find
    @card = Card.find(params[:id])
  end
end
