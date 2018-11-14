class Api::V1::CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :update, :destroy]

  def index
    collections = Collection.all
    # render json: collections, status: 200
    # render json: Collection.includes({:cards {include: :comments}) include: ['cards', 'comments'], status: 200

    Collection.includes(:cards {include: :comments}), status: 200

  end

  def create
    collection = Collection.create(collection_params)
    render json: collection, status: 201
  end

  def update
    @collection.update(collection_params)
    render json: @collection, status: 200
  end

  def destroy
    collectionId = @collection.id
    @collection.destroy
    render json: {message: "Zap! Collection deleted", collectionId: collectionId}
  end

  def show
    # render json: @collection, status: 200
    render :json => @collection.to_json( :include => [:cards] )

    # (:include => { :bs => {:include =>:c} })
  end

  private
  def collection_params
    params.permit(:designer, :season, :brand)
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end
end
