class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @books = Books.all
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
  end

  def update
    @book.update(book_params)
  end

  def destroy
    @book.destroy
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :discription)
    end

end
