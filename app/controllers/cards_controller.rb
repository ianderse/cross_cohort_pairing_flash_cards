class CardsController < ApplicationController
  def index

  end

  def show
    @card = Card.find(params[:id])
  end
end
