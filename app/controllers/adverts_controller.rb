class AdvertsController < ApplicationController
  def index
    @adverts = Advert.order_by_created
    @book = Book.all    
  end 
  
  def new
    @advert = Advert.new
    @current_book = Book.find(params[:book_id])
  end
  
  def create
    @advert = Advert.create_advert(params[:advert][:book_id], params[:advert][:price], params[:advert][:condition], params[:advert][:seller_id])
    @advert.cover.attach(params[:advert][:cover])
    redirect_to adverts_path
  end

  def show
    @advert = Advert.find(params[:id])
  end
  
  def edit
    @advert = Advert.find(Advert.advert_id(current_user,params[:id]))
  end
  
  def destroy
  end
end
