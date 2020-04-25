class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :current_user?, only: [:edit]

  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy

  end

  def current_user?
    unless  User.find(params[:id]) == current_user
      redirect_to user_path(current_user)
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image_id, :introduction)
  end

end
