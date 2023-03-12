class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]

  def home
    if user_signed_in?
      destroy and redirect_to user_path
    else
      render :home
    end
  end

  def index
    @users = User.all
  end

  def sign_in
    @user = User.new
    if user_signed_in?
      redirect_to user_path(current_user)
    else
      render :sign_in
    end
  end

  def new
    @user = User.new
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
  end

  def create
    @user = User.new(user_params)
    create_acompte
    if @user.save
      redirect_to user_session_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def create_acompte
    @acompte = Acompte.new
    @acompte.user = @user
    @acompte.save
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password_digest, :password_confirmation)
  end
end
