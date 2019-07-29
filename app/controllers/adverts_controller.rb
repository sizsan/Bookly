class AdvertsController < ApplicationController
  def index
    @adverts = Advert.order_by_price
  end
  
  def new
    @advert = Advert.new
  end
  
  def create
    @current_book ||= Book.find(params[:book_id])
   
  end

  def show
  
  end
  
  def edit
    @advert = Advert.find(Advert.advert_id(current_user,params[:id]))
  end
  
  def destroy
  
  end
end
