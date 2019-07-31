class OrdersController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @order = Order.new
        @advert = Advert.find(params[:advert_id])
        
    end

    def create
        @order = Order.create_order(params[:advert][:book_id], params[:advert][:price], params[:advert][:condition], params[:advert][:seller_id])
        redirect_to 
    end
end
