class StoresController < ApplicationController
    before_action :authenticate_user!
    def index 
        @stores = Store.all  
    end

    def show
        @store= Store.find(params[:id])
        @products = @store.products
    end
    def new
        @store = Store.new
    end
    def create
        Store.create(params.require(:store).permit(:name, :hometown, :img))
        redirect_to stores_path
    end
    def edit
        @store = Store.find(params[:id])
    end
    def update
       store =Store.find(params[:id])
       store.update(params.require(:store).permit(:name, :hometown, :img))
          
        redirect_to store
    end
    def destroy
        Store.find(params[:id]).destroy
      
        redirect_to stores_path
    end


end
