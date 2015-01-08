class SetsController < ApplicationController
  def index
    @sets = CardSet.all
  end

  def show
    @card_set = CardSet.find(params[:id])
    @cards = @card_set.cards
  end
end
