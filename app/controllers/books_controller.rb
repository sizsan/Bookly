class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.select_book(params[:book][:title])
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end
end
