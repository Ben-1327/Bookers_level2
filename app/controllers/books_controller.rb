class BooksController < ApplicationController

  def index

  end

  def show
    @book = Book.find(params[:id])
    @book_new = Book.new
    @user = @book.user
  end

  def edit

  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def destroy

  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
