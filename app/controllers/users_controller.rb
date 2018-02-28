class UsersController < ApplicationController
  before_action :authorize, only: [:show, :edit, :update, :destroy]
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
      flash[:warning] = "Check your email and password."
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.name = params[:user][:name]
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.save
    redirect_to user_path

  end

  def destroy
    @user = User.find params[:id]
    @user.destroy

  end

  private
  def user_params
    return params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
  end
end
