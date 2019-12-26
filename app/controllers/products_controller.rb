class ProductsController < ApplicationController
    def new
        @store = Store.find(params[:store_id])
        @product = Product.new
    end

    def show
        puts "Product"
        @product = Product.find(params[:id])
        puts @product
      end

    def create
        puts params
        @store = Store.find(params[:product][:store_id])
        Product.create(params.require(:product).permit(:name, :price, :img, :store_id))       
        redirect_to stores_path
    end

    def edit
        @product = Product.find(params[:id])
        
      end 

      def update
        product = Product.find(params[:id])
        product.update(params.require(:product).permit(:name, :img, :price))
        redirect_to stores_path
      end

      def destroy
        Product.find(params[:id]).destroy
        redirect_to request.referer
      end


end

