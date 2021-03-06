class AdvertsController < ApplicationController
  before_action :authenticate_user! 
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
    @seller_id = @advert.seller_id
  end
  
  def destroy
    advert_id = params[:id]
    Advert.destroy(advert_id)
    redirect_to adverts_path
  end
end
