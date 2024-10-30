class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    
    def new
        @product = Product.new
    end
    
    def create
        @product = Product.create( name: params[:product][:name], price: params[:product][:price] )
        @product.save
        redirect_to root_path
    end
    
    def destroy
        Product.find(params[:id]).destroy
        redirect_to root_path
    end
end