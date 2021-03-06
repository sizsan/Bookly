class OrdersController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @order = Order.new
        @advert = Advert.find(params[:advert_id])
       
        Stripe.api_key = Rails.application.credentials.dig(:stripe, :api_secret)
        @session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
        name: @advert.book.title,
        description: "by #{@advert.book.authors}",
        images: [@advert.book.image_link],
        amount: (@advert.price * 100).to_i,
        currency: 'aud',
        quantity: 1,
}],
success_url: order_complete_url,
cancel_url: order_cancel_url,
)
    end

    def complete
    end

end
