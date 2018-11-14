class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]

  def index
    users = User.all
    render json: users, status: 200
  end

  def create
    user = User.create(user_params)
    render json: user, status: 201
  end

  def update
    @user.update(user_params)
    render json: @user, status: 200
  end

  def destroy
    userId = @user.id
    @user.destroy
    render json: {message: "Zap! user deleted", userId: userId}
  end

  def show
    render json: @user, status: 200
  end

  def sign_in
    @user = User.find_by(username: params[:username])
    render json: @user, status: 200
  end

  private
  def user_params
    params.permit(:name, :username)
  end

  def find_user
    @user = User.find(params[:id])
  end


end
