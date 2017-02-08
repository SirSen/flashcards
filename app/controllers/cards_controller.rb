class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    create_update
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    create_update
  end

  def delete
    @card = Card.find(params[:id])
  end

  def destroy
    @card = Card.find(params[:id])
    if @card.destroy
      flash[:notice] = 'Карточка удалена'
      redirect_to cards_path
    else
      render('delete')
    end
  end

  private

  def create_update
    @card = Card.new(cards_params)
    if @card.original.downcase.strip != @card.translated.downcase.strip
      if @card.save
        flash[:notice] = "Карточка #{params[:action] == 'create' ? 'создана' : 'обновлена'}"
        redirect_to(cards_path)
      else
        render('new')
      end
    else
      render('new')
    end
  end

  def cards_params
    params.require(:card).permit(:original, :translated)
  end
end
