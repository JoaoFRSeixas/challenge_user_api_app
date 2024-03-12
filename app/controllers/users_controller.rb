class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token 

  def index
    @users = User.all
    render json: @users
  end

  def create
    result = User.new(user_params)
    result.save!
    render json: result

  end

  def delete
    result = User.find(user_delete_params['id'])
    render json: {"Action": "Destroyed"}, status: 200 if result.destroy
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    user = User.find(user_update_params['id'])
    render json: user if user.update(user_update_params)
  end

  private

  def user_params
    params.require(:user).permit(:email, :name)
  end

  def user_delete_params
    params.require(:user).permit(:id)
  end
  def user_update_params
    params.require(:user).permit(:id, :email, :name)
  end

end
