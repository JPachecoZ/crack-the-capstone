class UsersController < ApplicationController
  
  def index
    @users = User.all
    render json: @users
  end

  #get/User
  def show
    @user = User.find_by(:id)
    render json: @user
  end

  #create/user
  def create
    @user = User.new(user_params)

    if user.save
      render json: @user, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end

  end

  #Update/profile
  def update

    if @user.update(user_params)
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end

  end

  #Delete/profile ????????????????????????????????????????????????
  def delete
    if @user.destroy
      render json: "ok"
    end
  end

  #delegate :destroy, to: :current_user

  private
  
  def user_params
    params.require(:email).permit(:first_name, :last_name, :password, :doc_type, :doc_number, :country)
  end
end
