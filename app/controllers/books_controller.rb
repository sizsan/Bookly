class BooksController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.select_book(params[:book][:title])
    if @book == false
      flash[:info] = "Could not find that book."
    end
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end
end
