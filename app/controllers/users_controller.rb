class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find(user_params)
    @user.save redirect user_path
  end

  def destroy
  end

  private
  def user_params
    return params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
