class ItemsController < ApplicationController
  # before any post action happens, it will authenticate the user
    before_action :authenticate_user!

    # another devise helper method that retrieves the user object that has been authenticated
    def index
      @items = current_user.items
    end

    def show
      @store = Store.find(params[:store_id])
      @item = Item.find(params[:id])
    end

    def new
      @item = Item.new
      @store = Store.find(params[:store_id])
    end

    def edit
      @store = Store.find(params[:store_id])
      @item = Item.find(params[:id])
    end

    def create
      @store = Store.find(params[:store_id])
      @item = @store.items.create(item_params)
      redirect_to store_path(@store)
    end

    def update
      @store = Store.find(params[:store_id])
      @item = Item.find(params[:id])
      if @item.update(item_params)
       redirect_to store_item_path
      else
       render 'edit'
      end
  	end

    def destroy
      @store = Store.find(params[:store_id])
      @item = Item.find(params[:id])
      @item.destroy
      redirect_to store_path(@store)
    end

    private
    def item_params
      params.require(:item).permit(:name, :brand, :item_type, :price, :total_measure, :unit_of_measure, :price_per_unit, :notes, :price_expiration)
    end

end
