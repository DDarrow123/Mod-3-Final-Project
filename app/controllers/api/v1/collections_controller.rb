class Api::V1::CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :update, :destroy]

  def index
    collections = Comment.all
    render json: collections, status: 200
  end

  def create
    collection = Comment.create(collection_params)
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
    render json: @collection, status: 200
  end

  private
  def collection_params
    params.permit(:designer, :season)
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end
end
