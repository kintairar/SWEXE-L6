class CartItemsController < ApplicationController
    def new
        @cart_item = CartItem.new
    end
    
    def create
        @item = CartItem.create(qty: params[:cart_item][:qty], product_id: params[:cart_item][:product_id], cart_id: current_cart.id)
        @item.save
        redirect_to root_path
    end
    
    def destroy
        CartItem.find(params[:id]).destroy
        redirect_to root_path
    end
end
