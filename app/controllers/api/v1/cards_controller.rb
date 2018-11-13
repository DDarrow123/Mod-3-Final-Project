class Api::V1::CardsController < ApplicationController
  before_action :set_card, only: [:show, :update, :destroy]

  def index
    cards = Card.all
    render json: Card.includes(:comments), include: ['comments'], status: 200


  end

  def create
    card = Card.create(card_params)
    render json: card, status: 201
  end

  def update
    @card.update(card_params)
    render json: @card, status: 200
  end

  def destroy
    cardId = @card.id
    @card.destroy
    render json: {message:"Zap! Card deleted", cardId:cardId}
  end

  def show
    render :json => @card.to_json( :include => [:comments] )

    # render json: @card.includes(:comments), include: ['comments'], status: 200
  end

  private
  def card_params
    params.permit(:image, :likes, :details, :collection_id)
  end

  def set_card
    @card = Card.find(params[:id])
  end
end
