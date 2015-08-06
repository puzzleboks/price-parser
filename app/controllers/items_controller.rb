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
    end

    def edit
      @item = Item.find(params[:id])
    end

    def create
      @store = Store.find(params[:store_id])
      @item = Item.create!(item_params.merge(store: @artist))
      # @store.items.new(item_params)
      if @item.save
        redirect_to store_items_path #@item
      else render 'new'
      end
    end

    def update
      @store = Store.find(params[:store_id])
      @item = Item.find(params[:id])
      if @item.update(item_params)
       redirect_to store_item_path#@item
      else
       render 'edit'
      end
  	end

    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      redirect_to store_items_path
    end

    private
    def item_params
      params.require(:item).permit(:name, :brand, :item_type, :price, :total_measure, :unit_of_measure, :price_per_unit, :notes, :price_expiration)
    end

end
