class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end


  def edit

  end

  def destroy

  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image_id, :introduction)
  end

end
