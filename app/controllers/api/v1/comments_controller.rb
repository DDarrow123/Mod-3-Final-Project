class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  def index
    comments = Comment.all
    render json: comments, status: 200
  end

  def create
    comment = Comment.create(comment_params)
    render json: comment, status: 201
  end

  def update
    @comment.update(comment_params)
    render json: @comment, status: 200
  end

  def destroy
    commentId = @comment.id
    @comment.destroy
    render json: {message:"Zap! Comment deleted", commentId:commentId}
  end

  def show
    render json: @comment, status: 200
  end

  private
  def comment_params
    params.permit(:content, :user_id, :card_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end


end
