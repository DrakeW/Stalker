class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def create
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :gender, :age)
  end

end
